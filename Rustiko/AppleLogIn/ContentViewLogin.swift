//
//  ContentViewLogin.swift
//  Rustiko
//
//  Created by Mich balkany on 5/16/24.
//

import SwiftUI

struct ContentViewLogin: View {
    /// User Log Status
    @AppStorage("log_Status") private var logStatus: Bool = false
    var body: some View {
        if logStatus {
//            HomeLogin()
            
        } else {
            AppleSignIn()
        }
    }
}

#Preview {
    ContentViewLogin()
}
