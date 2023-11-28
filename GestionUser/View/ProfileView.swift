//
//  ProfileView.swift
//  GestionUser
//
//  Created by ayouboueslati on 28/11/2023.
//

import SwiftUI

struct UserProfileView: View {
    @State private var username = "JohnDoe"
    @State private var email = "john.doe@example.com"
    @State private var phoneNumber = "123-456-7890"
    @State private var dateOfBirth = "01/01/1990"
    @State private var cv = "CV not uploaded"

    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .padding(.bottom, 20)

                Text("Username: \(username)")
                    .padding(.bottom, 10)

                Text("Email: \(email)")
                    .padding(.bottom, 10)

                Text("Phone Number: \(phoneNumber)")
                    .padding(.bottom, 10)

                Text("Date of Birth: \(dateOfBirth)")
                    .padding(.bottom, 10)

                Text("CV: \(cv)")
                    .padding(.bottom, 10)

                NavigationLink(destination: EditProfileView()) {
                    Text("Edit Profile")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
                }
            }
            .padding()
            .navigationBarTitle("User Profile", displayMode: .inline)
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
