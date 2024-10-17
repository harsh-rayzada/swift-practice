//
//  HeaderView.swift
//  Practice
//
//  Created by Harsh Rayzada on 2024-10-10.
//  Copyright © 2024 Learning. All rights reserved.
//

import SwiftUI

struct HeaderComponent: View {
    @Binding var fontSize: Float
    
    private func logout() -> Void {
        
    }
    var body: some View{
        HStack{
            //passing a value to the child component received from the parent component
            LogoHeaderComponent(fontSize: $fontSize)
            Spacer()
            NavigationLink(destination: {
                LoginView()
            }, label: {
                Button("Logout", action: logout)
                    .foregroundStyle(.green)
                    .padding([.top, .bottom], 5)
                    .padding([.leading, .trailing], 15)
                    .background(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.green, lineWidth: 2)
                    )
                    .fontWeight(.bold)
            })
        }
    }
}
