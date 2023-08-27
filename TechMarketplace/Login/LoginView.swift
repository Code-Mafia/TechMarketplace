//
//  LoginView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var redirectToHome = false
    @State var redirectToSignup = false
    @State var email = String()
    @State var password = String()
    
    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {

                Text("Login")
                    .font(.title)
                    .padding(.top)
                
                Spacer()
                Spacer()

                VStack(spacing: 20) {
                    LabelTextField(inputText: $email, labelText: "Email")
                    LabelTextField(inputText: $password, labelText: "Password", isSecureField: true)
                }
                
                Button("Validate") {
                    redirectToHome = true
                }
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity)
                .frame(minHeight: 48)
                .background(.white)
                .cornerRadius(8)

                Button("Already have an account ? Sign-up") {
                    redirectToSignup = true
                }
                .fontWeight(.regular)
                .foregroundColor(.placeholder)
                .padding(.top)
               
                Spacer()

                Button("Skip for now") {
                    redirectToHome = true
                }
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding()
                
                Spacer()
            }
            .bold()
            .foregroundColor(.white)
            .padding()
        }
        .fullScreenCover(isPresented: $redirectToHome, content: {
            HomeTabView(isPresented: $redirectToHome)
        })
        .fullScreenCover(isPresented: $redirectToSignup, content: {
            SignupView()
        })
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
