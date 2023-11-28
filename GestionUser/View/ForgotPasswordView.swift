//
//  ForgotPasswordView.swift
//  GestionUser
//
//  Created by ayouboueslati on 28/11/2023.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email = ""

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
                    Text("Forgot Password?")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.bottom, 20)

                    Text("Enter your email address below to receive instructions on resetting your password.")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 30)

                    TextField("Email", text: $email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.7)))
                        .padding(.bottom, 30)
                }
                .padding(.horizontal, 30)

                Button(action: {
                    // Perform forgot password action here
                    print("Forgot Password tapped")
                }) {
                    Text("Reset Password")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                }
            }
            .padding()
        }
        .navigationBarTitle("Forgot Password", displayMode: .inline)
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
