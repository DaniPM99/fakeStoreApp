//
//  LoginFlow.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import SwiftUI

struct LoginFlow: View {

    let onFinish: () -> Void

    var body: some View {
        let viewModel = LoginViewModel(
            interactor: .interactor()
        )

        LoginView(viewModel: viewModel)
            .onReceive(viewModel.didFinish) {
                onFinish()
            }
    }
}
