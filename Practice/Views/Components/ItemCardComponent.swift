//
//  ItemCardComponent.swift
//  Practice
//
//  Created by Harsh Rayzada on 2024-10-10.
//  Copyright © 2024 Learning. All rights reserved.
//

import SwiftUI

struct ItemCardComponent: View{
    var body: some View{
        NavigationLink(destination: {
            LoginView()
        }, label: {
            VStack(spacing: 0){
                Group(){
                    Text("RN")
                        .font(.system(size: 25))
                        .foregroundStyle(.black)
                        .lineSpacing(0)
                    Text("Restaurant Name")
                        .font(.system(size: 15))
                        .foregroundStyle(.black)
                        .fontWeight(.bold)
                    Text("Pizza, Sandwich and more and more and more and more and more and more and more and more")
                        .font(.system(size: 12))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                    Text("2 offers!")
                        .padding([.top], 15)
                        .font(.system(size: 12))
                        .foregroundStyle(.green)
                        .fontWeight(.semibold)
                }
                .padding([.leading, .trailing], 10)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding([.top, .bottom], 10)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.green, lineWidth: 3)
            )
            .frame(width: 160, height: 140)
        })
    }
}

#Preview {
    ItemCardComponent()
        .preferredColorScheme(.light)
}
