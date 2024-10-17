//
//  ResetPasswordView.swift
//  Practice
//
//  Created by Harsh Rayzada on 2024-10-08.
//  Copyright © 2024 Learning. All rights reserved.
//

import SwiftUI

struct ResetPasswordView: View {
    @State private var userIdentifier: String = ""
    @State private var showOTPField: Bool = false
    @State private var resetStatus: Bool = false
    @State var headerFontSize: Float = 45
    
    private func generateOTP() -> Void {
        showOTPField = true
    }
    
    private func resetPassword() -> Void {
        showOTPField = false
        resetStatus = true
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                //passing a value to the child component from this parent component
                LogoHeaderComponent(fontSize: $headerFontSize)
                    .padding(.bottom)
                VStack(spacing: 20){
                    TextField("Email address or Username", text: $userIdentifier)
                        .textInputAutocapitalization(.never)
                        .padding(.all)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.green, lineWidth: 3)
                        )
                    
                    if showOTPField {
                        TextField("Enter OTP", text: $userIdentifier)
                            .textInputAutocapitalization(.never)
                            .padding(.all)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.green, lineWidth: 3)
                            )
                        
                        TextField("New password", text: $userIdentifier)
                            .textInputAutocapitalization(.never)
                            .padding(.all)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.green, lineWidth: 3)
                            )
                    }
                }
                VStack{
                    if !showOTPField {
                        Button("Generate OTP", action: generateOTP)
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
                    
                    if showOTPField {
                        Button("Reset password", action: resetPassword)
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
                }
                .padding([.top], 10)
                .padding([.bottom], 30)
                if showOTPField {
                    Text("OTP has been sent to your email address")
                        .font(.system(size: 14))
                }
                if resetStatus {
                    Text("Password has been reset")
                        .font(.system(size: 14))
                }
                NavigationLink(destination: {
                    LoginView()
                }, label: {
                    Text("Back to Login!")
                        .foregroundStyle(.black)
                        .underline()
                })
            }
            .padding(30)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview{
    ResetPasswordView()
        .preferredColorScheme(.light)
}
