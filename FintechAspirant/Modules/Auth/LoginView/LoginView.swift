//
//  LoginView.swift
//  FintechAspirant
//
//  Created by Jaimin on 01/05/25.
//

import SwiftUI

enum Field {
    case email
    case password
}

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var navigateToDashboard = false
    
    @FocusState private var focusedField: Field?
    
    var body: some View {
        VStack {
            Spacer().frame(height: 40) // Push a little from top
            
            HStack {
                // X with green color
                DismissButton(type: .textX(color: .green))
                
                Spacer()
            }
            
            Spacer()
            
            // Logo
            Image("logo") // replace with your logo
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
            
            TextField("Email", text: $email, prompt: Text("Email").foregroundColor(.gray))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(focusedField == .email ? Color.white : Color.gray, lineWidth: 1)
                )
                .foregroundColor(.white)
                .padding(.horizontal)
                .focused($focusedField, equals: .email)
            
            // Password
            SecureField("Password", text: $password, prompt: Text("Password").foregroundColor(.gray))
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(focusedField == .password ? Color.white : Color.gray, lineWidth: 1)
                )
                .foregroundColor(.white)
                .padding(.horizontal)
                .focused($focusedField, equals: .password)
            
            
            // Log in button (filled)
            NavigationLink(destination: TabBarView(), isActive: $navigateToDashboard) {
                CommonButton(
                    title: "Log in",
                    style: .filled(backgroundColor: Color.gray.opacity(0.7), foregroundColor: .black),
                    action: {
                        navigateToDashboard = true
                    }
                )
                .padding(.top, 20)
                .padding(.horizontal)
            }
            
            // I need help button (outlined)
            CommonButton(
                title: "I need help",
                style: .outlined(borderColor: .gray, foregroundColor: .init(white: 0.7)),
                action: {
                    // help action
                }
            )
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            Spacer()
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}


#Preview {
    LoginView()
}
