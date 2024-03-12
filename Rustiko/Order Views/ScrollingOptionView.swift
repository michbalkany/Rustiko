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
            ForEach(scrollList, id: \.self) { item in
<<<<<<< HEAD
                ScrollView {
//                        NavigationLink(item[0].parentCategory ?? "None", value: item)
                    
                }
=======
//                ScrollView {
//                        NavigationLink(item[0].parentCategory ?? "None", value: item)
//                    
//                }
>>>>>>> 356cf42e3e92bb7120361eeb2885e01803886299
            }
            .navigationDestination(for: [Menu].self, destination: MenuTest.init)
            
        }
        
//        ScrollView(.horizontal) {
//            LazyHStack {
//                ForEach(scrollList, id: \.self) { item in
//                    NavigationLink(value: item) {
//                        // lorem ipsum
//                        VStack {
//                            Circle()
//                                .frame(width: 75, height: 75)
//                            Button {
//                                // something
//                            } label: {
//                                Text(String("\(item[0].parentCategory ?? "None")"))
//                            }
//                            ForEach(item, id: \.self) { menu in
//                                NavigationLink(value: menu) {
//                                    
//                                    Text(menu.name)
//                                   
//                                    
//                                }
//                            }
//                            
//                        }
//                    }
//                }
//            }
//            
//        }
    }
    
}


#Preview {
    ScrollingOptionView()
}
