//
//  LoginView.swift
//  meald
//
//  Created by Hutch Turner on 11/21/25.
//

import SwiftUI
import Supabase


struct LoginView: View {

    @State private var userEmail: String = ""
//    @Binding var currentView: PreViewState
    
    
    
    var body: some View {
        ZStack {
            Color(red:255/255, green:251/255, blue:234/255).ignoresSafeArea()
            
            VStack {
                TextField(
                    "Enter email",
                    text: $userEmail
                )
                .frame(width:300, height:50)
                .background(Color(red:230/255, green:230/255, blue:230/255))
                .foregroundStyle(.black)
                .cornerRadius(100)
                .multilineTextAlignment(.center)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                
                // Sign Up Button
                Button(
                    action: {
                        Task {
                            print("something")
                            // send a magic link to the user
                        }
                    },
                    label: {
                        Text("Sign Up")
                            .frame(width:200, height:50)
                            .background(.blue)
                            .foregroundStyle(.black)
                            .cornerRadius(100)
                            .font(Font.title2)
                            
                    }
                )
                .disabled(userEmail.isEmpty)
                .disabled(!userEmail.contains("@"))
            }
            // Log In Button
            
            
        } // End of ZStack
    }
}


struct EnterOTPView: View {
    @State private var otp: String = ""
//    @Binding var currentView: PreViewState
    
    var body: some View {
        ZStack {
            // Background color
            Color(red:255/255, green:251/255, blue:234/255).ignoresSafeArea()
            
            // Main VStack
            VStack {
                TextField(
                    "Enter OTP Code",
                    text: $otp
                )
                .frame(width:300, height:50)
                .background(Color(red:230/255, green:230/255, blue:230/255))
                .foregroundStyle(.black)
                .cornerRadius(100)
                .multilineTextAlignment(.center)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .keyboardType(.numberPad)
                
                // Sign Up Button
                Button(
                    action: {
                        Task {
                            print("verifying otp code")
                            // verify otp code
                        }
                    },
                    label: {
                        Text("Verify Code")
                            .frame(width:200, height:50)
                            .background(.blue)
                            .foregroundStyle(.black)
                            .cornerRadius(100)
                            .font(Font.title2)
                            
                    }
                )
                .disabled(otp.count != 6)
            }
        }
    } //  End of VStack
    
}

#Preview {
//    LoginView()
    EnterOTPView()
}
