//
//  RegisterView.swift
//  GestionUser
//
//  Created by ayouboueslati on 28/11/2023.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.customNavyBlue, Color.customBlue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack {
                Image("logo (2)") // Replace with your logo image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 120)
                    .padding(.bottom, 30)

                VStack(spacing: 20) {
                    TextField("Email", text: $email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.7)))
                        .padding(.bottom, 20)

                    SecureField("Password", text: $password)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.7)))
                        .padding(.bottom, 20)

                    SecureField("Confirm Password", text: $confirmPassword)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.7)))
                        .padding(.bottom, 30)
                }
                .padding(.horizontal, 30)

                Button(action: {
                    // Perform registration action here
                    print("Register tapped")
                }) {
                    Text("Register")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                }
            }
            .padding()
        }
        .navigationBarTitle("Register", displayMode: .inline)
    }
}

extension Color {
    static let customNavyBlue = Color(red: 0.0, green: 0.0, blue: 0.2)
    static let customBlue = Color(red: 0.0, green: 0.0, blue: 1.0)
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
