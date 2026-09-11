//
//  loginpage.swift
//  healthlifestyle
//
//  Created by Student on 11/09/26.
//

import SwiftUI

struct loginpage: View {
    @State private var email: String = ""
    @State private var password = ""
    var body: some View {
        VStack(spacing: 40){
            Text("Login Here")
                .font(.system(size: 28, weight: .semibold))
                .foregroundStyle(.color)
            Text("Welcome back you've\n been missed!")
                .multilineTextAlignment(.center)
            HStack(spacing: 10){
                Image(systemName: "person.fill")
                    .padding(.leading, 20)
                TextField("Email", text: $email)
            }
            .frame(width: 350, height: 60)
            .background(.color.opacity(0.1))
            .cornerRadius(15)
            HStack{
                Image(systemName: "key.shield.fill")
                    .padding(.leading, 20)
                SecureField("Password", text: $password)
            }
            .frame(width: 350, height: 60)
            .background(.color.opacity(0.1))
            .cornerRadius(15)
            
            Text("Login")
                .frame(width: 350, height: 50)
                .foregroundStyle(.white)
                .font(.system(size: 17, weight: .semibold))
                .background(.color)
                .cornerRadius(15)
                .shadow(radius: 10)
            Text("Forgot Password?")
        }
        .padding(.bottom, 100)
    }
}

#Preview {
    loginpage()
}
