//
//  ForgotViewModel.swift
//  GestionUser
//
//  Created by ayouboueslati on 28/11/2023.
//

import Foundation

struct ForgetPasswordRequest: Encodable {
    let num_tel: String
}


class ForgotViewModel: ObservableObject {
    @Published var num_tel: String = ""

}
