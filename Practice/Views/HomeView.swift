//
//  HomeView.swift
//  Practice
//
//  Created by Harsh Rayzada on 2024-10-10.
//  Copyright © 2024 Learning. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var headerFontSize: Float = 25
    var body: some View {
        NavigationStack{
            VStack{
                //passing a value to the child component from this parent component
                HeaderComponent(fontSize: $headerFontSize)
                    .padding([.top], 15)
                VStack{
                    Text("Hi, Bravo Actual")
                        .font(.system(size: 35))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding([.top, .bottom], 1)
                Text("What are we eating today!")
                    .frame(maxWidth: .infinity, alignment: .leading)
                VStack{
                    Text("Categories")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    ItemCardListComponent()
                    Text("Favorites")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.top], 30)
                    ItemCardListComponent()
                    Text("Most ordered")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.top], 30)
                    ItemCardListComponent()
                }
                .padding([.top, .bottom], 10)
                Spacer()
                FooterComponent()
            }
        }
        .padding([.leading, .trailing], 10)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeView()
        .preferredColorScheme(.light)
}
