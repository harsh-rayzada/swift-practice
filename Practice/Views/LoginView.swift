//
//  LoginView.swift
//  Practice
//
//  Created by Harsh Rayzada on 2024-10-08.
//  Copyright © 2024 Learning. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    @State private var tncFlag: Bool = false
    @State private var showRegisterFields: Bool = false
    @State var headerFontSize: Float = 45
    
    private func signIn() -> Void {
        
    }
    
    private func register() -> Void {
        showRegisterFields.toggle()
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                //Created a component to reuse in different views
                //passing a value to the child component from this parent component
                LogoHeaderComponent(fontSize: $headerFontSize)
                    .padding(.bottom)
                VStack(spacing: 20) {
                    TextField("Username", text: $username)
                        .textInputAutocapitalization(.never)
                        .padding(.all)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.green, lineWidth: 3)
                        )
                    SecureField("Password", text: $password)
                        .padding(.all)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.green, lineWidth: 3)
                        )
                    
                    if showRegisterFields {
                        TextField("Email address", text: $email)
                            .textInputAutocapitalization(.never)
                            .padding(.all)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.green, lineWidth: 3)
                            )
                        Toggle("I agree to T&C", isOn: $tncFlag)
                            .toggleStyle(.switch)
                    }
                }
                HStack {
                    NavigationLink(destination: {
                        HomeView()
                    }, label: {
                        Button("Login", action: signIn)
                            .padding([.top, .bottom], 20)
                            .padding([.leading, .trailing], 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 10)
                            )
                            .font(.system(size: 22, weight: .medium))
                            .foregroundColor(.white)
                            .background(.green)
                    })                    
                    Button("Register", action: register)
                        .padding([.top, .bottom], 20)
                        .padding([.leading, .trailing], 43)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 10)
                        )
                        .font(.system(size: 22, weight: .medium))
                        .foregroundColor(.white)
                        .background(.green)
                }
                NavigationLink(destination: {
                    ResetPasswordView()
                }, label: {
                    Text("Reset password?")
                        .padding([.top], 30)
                        .underline()
                        .foregroundStyle(.black)
                })
            }
            .padding(30)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    LoginView()
        .preferredColorScheme(.light)
}
