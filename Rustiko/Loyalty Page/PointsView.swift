//
//  PointsView.swift
//  Rustiko
//
//  Created by Mich balkany on 4/3/24.
//

import SwiftUI

struct PointsView: View {
    @State private var isShowingBarCode = false
    
    var body: some View {
        
        NavigationStack {
            Section {
                HStack {
                    VStack(alignment: .leading, spacing: 40) {
                        Text("Loyalty")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.leading)
                            .toolbar {
                                Button("View Details") {
                                    print("View details tapped!")
                                }
//                               .padding(.top, 100) tried to align at the same                                             level but it wont be tappable anymore
                            
                            }
                        HStack(spacing: 0){
                            Image(systemName: "star.circle") // update the sf symbol to be more sexy
                            Text("0 points") // int needs to be able to update
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .padding(.leading)
                                
                        }
                        .padding()
                        VStack(alignment: .center, spacing: 15) {
                            // these cards will act as points promotions
                            
                            Rectangle()
                                .frame(width: 300, height: 100)
                                .foregroundStyle(.blue)
                            Rectangle()
                                .frame(width: 300, height: 100)
                                .foregroundStyle(.red)
                            Rectangle()
                                .frame(width: 300, height: 100)
                                .foregroundStyle(.yellow)
                        }
                        .padding()
                    }
                    Spacer()
                }
                Spacer()
                    .padding()
                
                Button("SCAN LOYALTY CARD") {
                    isShowingBarCode.toggle()
                    print("i have been pressed")
                }
                .frame(maxWidth: .infinity, maxHeight: 40)
                .background(.indigo)
                .foregroundStyle(.white)
                .sheet(isPresented: $isShowingBarCode){
                    RewardsCard(currentLoyaltyId: LoyaltyID(uuid: "1234-1234-1234", name: "John Smith"))                        .presentationDetents([.medium, .large])
                }
            }
        }
    }
}

#Preview {
    PointsView()
}
