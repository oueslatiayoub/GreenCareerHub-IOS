//
//  ProfilViewModel.swift
//  GestionUser
//
//  Created by ayouboueslati on 28/11/2023.
//

import Foundation
class ProfilViewModel: ObservableObject {
    @Published var user: User?
    @Published var isLoading = false
    @Published var error: Error?
    
    @Published var email: String = ""
    @Published var fullname: String = ""
    @Published var num_tel: String = ""
    @Published var img: String = ""
    @Published var isNavigationActive: Bool = false
}
