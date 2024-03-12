//
//  AuthHomeView.swift
//  Rustiko
//
//  Created by Mich balkany on 3/12/24.
//

import SwiftUI
import Firebase

struct AuthHomeView: View {
    @AppStorage("log_status") private var logStatus: Bool = false
    var body: some View {
        if logStatus {
            // Home View
            AuthHomeView()
            
        } else {
            Login()
        }
    }
}

#Preview {
    AuthHomeView()
}
