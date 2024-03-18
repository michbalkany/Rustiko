//
//  Login.swift
//  Rustiko
//
//  Created by Mich balkany on 3/12/24.
//

import SwiftUI
import Firebase
import Lottie

struct Login: View {
    // View Properties
    @State private var activeTab: Tab = .login
    @State private var isLoading: Bool = false
    @State private var showEmailVerificationView: Bool = false
    @State private var emailAddress: String = ""
    @State private var password: String = ""
    @State private var reEnterPassword: String = ""
    
    // Alert Properties
    @State private var alertMessage: String = ""
    @State private var showAlert: Bool = false
    //Forgot Password properties
    @State private var showResetAlert: Bool = false
    @State private var resetEmailAddress: String = ""
    
    @AppStorage("log_status") private var logStatus: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Email Address", text: $emailAddress)
                        .keyboardType(.emailAddress)
                        .customTextField("person")
                    
                    SecureField("Password", text: $password)
                        .customTextField("lock", 0, activeTab == .login ? 10 : 0)
                    
                    if activeTab == .SignUp {
                        SecureField("Re-Enter Password", text: $reEnterPassword)
                            .customTextField("lock", 0, activeTab != .login ? 10 : 0)
                    }
                } header: {
                    
                    Picker("", selection: $activeTab) {
                        ForEach(Tab.allCases, id: \.rawValue) {
                            Text($0.rawValue)
                                .tag($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    .listRowInsets(.init(top: 15, leading: 0, bottom: 15, trailing: 0))
                    .listRowSeparator(.hidden)
                } footer: {
                    // forgot password
                    VStack(alignment: .trailing, spacing: 15, content: {
                        if activeTab == .login {
                            Button("Forgot Password") {
                                showResetAlert = true
                            }
                            .font(.caption)
                            .tint(Color.accentColor)
                        }
                        
                        // login button
                        Button(action: loginAndSignUp, label: {
                            HStack(spacing: 12) {
                                Text(activeTab == .login ? "Login" : "Create An Account")
                                
                                Image(systemName: "arrow.right")
                                    .font(.callout)
                            }
                            .padding(.horizontal, 10)
                        })
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.capsule)
                        .showLoadingIndicator(isLoading)
                        .disabled(buttonStatus)
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .listRowInsets(.init(top: 15, leading: 0, bottom: 0, trailing: 0))
                }
                .disabled(isLoading)
                
            }
            .animation(.snappy, value: activeTab)
            .listStyle(.insetGrouped)
            .navigationTitle("Auth part 2")
        }
        // Animated email verification from lottie
        .sheet(isPresented: $showEmailVerificationView, content: {
            EmailVerificationView()
                .presentationDetents([.height(350)])
                .presentationCornerRadius(25)
                .interactiveDismissDisabled()
        })
        .alert(alertMessage, isPresented: $showAlert) {  }
        
        // resetting password
        .alert("Reset Password", isPresented: $showResetAlert, actions: {
            TextField("Email Address", text: $resetEmailAddress)
            
            Button("Send Reset Link", role: .destructive, action: sendResetLink)
            
            Button("Cancel", role: .cancel) {
                resetEmailAddress = ""
            }
        }, message: {
            Text("Please enter the email address")
        })
        .onChange(of: activeTab, initial: false) { oldValue, newValue in
            password = ""
            reEnterPassword = ""
        }
    }
    
    // Email Verification View
    @ViewBuilder
    func EmailVerificationView() -> some View {
        VStack(spacing: 6) {
            GeometryReader { _ in
                if let bundle = Bundle.main.path(forResource: "EmailAnimation", ofType: "json") {
                    LottieView {
                        await LottieAnimation.loadedFrom(url: URL(filePath: bundle))
                    }
                    .playing(loopMode: .loop)
                }
            }
            
            Text("Verification")
                .font(.title.bold())
            
            Text("We have sent a verification email to your email address.\nPlease verify to continue")
                .multilineTextAlignment(.center)
                .font(.caption)
                .foregroundStyle(.black)
                .padding(.horizontal, 25)
        }
        .overlay(alignment: .topTrailing, content: {
            Button("Cancel") {
                // Add isLoading = false
                showEmailVerificationView = false
                // REQUIRED: We can delete the account in firebase
                //                if let user = Auth.auth().currentUser {
                //                    user.delete { _ in
                //
                //                    }
                //                }
            }
            .padding(15)
        })
        .padding(.bottom, 15)
        // using swiftUI's timer to refresh the status every 2 seconds to verify whether the users email address has been verified or not.
        .onReceive(Timer.publish(every: 2, on: .main, in: .default).autoconnect(), perform: { _ in
            if let user = Auth.auth().currentUser {
                user.reload()
                if user.isEmailVerified {
                    // Email succesfully verified
                    showEmailVerificationView = false
                    logStatus = true
                }
            }
            
        })
    }
    
    func sendResetLink() {
        Task {
            do {
                if resetEmailAddress.isEmpty {
                    await presentAlert("Please enter an email address")
                    return
                }
                
                isLoading = true
                try await Auth.auth().sendPasswordReset(withEmail: resetEmailAddress)
                await presentAlert("Please check your email inbox and follow the steps to reset your password!")
                
                
                resetEmailAddress = ""
                isLoading = false
            } catch {
                await presentAlert(error.localizedDescription)
            }
        }
    }
    
    func loginAndSignUp() {
        Task {
            isLoading = true
            do {
                if activeTab == .login {
                    // Logging in
                    let result = try await Auth.auth().signIn(withEmail: emailAddress, password: password)
                    if result.user.isEmailVerified {
                        // Verified User
                        // Redirect To Home View
                        logStatus = true
                    } else {
                        // send Verification Email and Presenting Verification View
                        try await result.user.sendEmailVerification()
                        showEmailVerificationView = true
                    }
                } else {
                    // creating New account
                    if password == reEnterPassword {
                       let result = try await Auth.auth().createUser(withEmail: emailAddress, password: password)
                        // Sending Verification Email
                        try await result.user.sendEmailVerification()
                        // Showing Email Verification View
                        showEmailVerificationView = true
                        
                    } else {
                        await presentAlert("Passwords Don't Match Please try again. ")
                    }
                }
            } catch {
                await presentAlert(error.localizedDescription)
            }
        }
    }
    
    // Presenting Alert
    func presentAlert(_ message: String) async {
        await MainActor.run {
            alertMessage = message
            showAlert = true
            isLoading = false
            resetEmailAddress = ""
        }
    }
    
    // Tab Type
    enum Tab: String, CaseIterable {
        case login = "Login"
        case SignUp = "Sign Up"
    }
    
    // Button Status
    var buttonStatus: Bool {
        if activeTab == .login {
            return emailAddress.isEmpty || password.isEmpty
        }
        
        return emailAddress.isEmpty || password.isEmpty || reEnterPassword.isEmpty
    }
}

// customizing the section view with list features

fileprivate extension View {
    @ViewBuilder
    func showLoadingIndicator(_ status: Bool) -> some View {
        self
            .animation(.snappy) { content in
                content
                    .opacity(status ? 0 : 1)
            }
            .overlay {
                if status {
                    ZStack {
                        Capsule()
                            .fill(.bar)
                        
                        ProgressView()
                    }
                }
            }
    }
    
    @ViewBuilder
    func customTextField(_ icon: String? = nil, _ paddingTop: CGFloat = 0, _ paddingBottom: CGFloat = 0) -> some View {
        HStack {
            if let icon {
                Image(systemName: icon)
                    .font(.title2)
                    .foregroundStyle(.gray)
                
            }
            self
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 12)
        .background(.bar, in: .rect(cornerRadius: 10))
        .padding(.top, paddingTop)
        .padding(.bottom, paddingBottom)
        .listRowInsets(.init(top: 10, leading: 15, bottom: 0, trailing: 15))
        .listRowSeparator(.hidden)
    }
}

#Preview {
    Login()
}
