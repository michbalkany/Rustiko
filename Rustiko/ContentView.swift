//
//  ContentView.swift
//  Rustiko
//
//  Created by Mich balkany on 1/29/24.
//

import SwiftUI

struct ContentView: View {
    
    //    @State private var showMenu = false
    //    @State private var selectedTab = 0
    /// User Log Status
    @AppStorage("log_Status") private var logStatus: Bool = false
    var body: some View {
        if logStatus {
            MainView()
            
        } else {
            AppleSignIn()
        }
    }
        
        
    
}

#Preview {
    ContentView()
}
