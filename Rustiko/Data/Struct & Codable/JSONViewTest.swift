//
//  JSONViewTest.swift
//  Rustiko
//
//  Created by Micah Njeru on 14/02/2024.
//

import SwiftUI

struct JSONViewTest: View {
    let scrollList = [
        beverages,
        breakfast,
        dessert,
        dinner,
        lunch
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal) {
                LazyHStack{
                    ForEach(scrollList, id: \.self) { item in
                        VStack{
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                            NavigationLink(item[0].menu, value: item)
                        }
                        .navigationDestination(for: [Menu].self, destination: MenuTest.init)
                        
                    }
                }
                //                VStack{
                //                    List(scrollList, id: \.self) { item in
                //                        NavigationLink(item[0].menu, value: item)
                //                        //                NavigationLink(item[0].parentCategory ?? "None", value: item)
                //                    }
                //                    .navigationDestination(for: [Menu].self, destination: ListDetailView.init)
                //                }
            }
            .navigationDestination(for: [Menu].self, destination: MenuTest.init)
            .padding()
            .ignoresSafeArea()
            
            // Bottom Backup?
//                        List(scrollList, id: \.self) { item in
//                            NavigationLink(item[0].menu, value: item)
//             NavigationLink(item[0].parentCategory ?? "None", value: item)
//            }
//            .navigationDestination(for: [Menu].self, destination: ListDetailView.init)
            
        }
        
        //        // Beverages
        //        Text("\(beverages[0].price)")
        //
        //        // Breakfast
        //        Text("\(breakfast[0].name)")
        //
        //        // Dessert
        //        Text("\(dessert[0].childCategory ?? "None")")
        //
        //        // Dinner
        //        Text("\(dinner[0].description ?? "None")")
        //
        //        // Lunch
        //        Text("\(lunch[0].id)")
        //
        //        // Breakfast
        //        Text("\(beverages[43].description ?? "Something else")")
        
    }
}

#Preview {
    JSONViewTest()
}
