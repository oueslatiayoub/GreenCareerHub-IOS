//
//  LoginViewModel.swift
//  GestionUser
//
//  Created by ayouboueslati on 28/11/2023.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isNavigationActive: Bool = false
    
}
