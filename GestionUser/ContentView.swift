//
//  ContentView.swift
//  GestionUser
//
//  Created by ayouboueslati on 28/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                VStack {
                    NavigationLink(destination: LoginView()) {
                        Text("Login")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
                    }
                    .padding()

                    NavigationLink(destination: RegisterView()) {
                        Text("Register")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
                    }
                    .padding()

                    NavigationLink(destination: ForgotPasswordView()) {
                        Text("Forgot Password")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
                    }
                    .padding()

                    NavigationLink(destination: UserProfileView()) {
                        Text("User Profile")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
                    }
                    .padding()
                }
                .navigationBarTitle("App Navigation", displayMode: .inline)
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
