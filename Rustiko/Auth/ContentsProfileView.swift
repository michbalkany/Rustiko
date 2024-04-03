//
//  ContentsProfileView.swift
//  Rustiko
//
//  Created by Mich balkany on 3/18/24.
//

import SwiftUI
import Firebase

struct ContentsProfileView: View {
    @AppStorage("log_status") private var logStatus: Bool = false
    var body: some View {
        if logStatus {
            // Home View
            HomeView()
            
        } else {
            Login()
        }
        }
    }

#Preview {
    ContentsProfileView()
}
