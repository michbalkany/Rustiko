//
//  ScrollingOptionView.swift
//  Rustiko
//
//  Created by Mich balkany on 2/18/24.
//

import SwiftUI

struct ScrollingOptionView: View {
    
    
    let scrollList = [
        beverages,
        breakfast,
        dinner,
        dessert,
        lunch
    ]

    var body: some View {
        NavigationStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(scrollList, id: \.self) { item in
                        VStack {
                            Image("Fresh-juice")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 75)
                            
                            NavigationLink(item[0].parentCategory ?? "None", value: item)
                        }
                    }
                }
            }
//            .navigationDestination(for: [Menu].self, destination: BeverageDetailView.init)

            
            
            
            
//            .navigationDestination(for: [Menu].self) { breky in
//
//            BreakfastDetailView(breakfast: breakfasts)
//            }
//            .navigationDestination(for: [Menu].self) { bevy in
//            BeverageDetailView(beverage: beverages)
//            }
            
            
            
//              BeverageDetailView.init)
//


        }
        

    }
    
}


#Preview {
    ScrollingOptionView()
}



