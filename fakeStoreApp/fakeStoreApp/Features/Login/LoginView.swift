//
//  LoginView.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
        Text("Login View")
    }
}

#Preview {
    LoginView(viewModel: LoginViewModel(interactor: LoginInteractor()))
}
