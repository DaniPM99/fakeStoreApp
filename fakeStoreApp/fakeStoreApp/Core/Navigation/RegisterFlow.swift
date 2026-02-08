//
//  RegisterFlow.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import SwiftUI

struct RegisterFlow: View {

    let onFinish: () -> Void

    var body: some View {
        let viewModel = RegisterViewModel(
            interactor: .interactor()
        )

        RegisterView(viewModel: viewModel)
            .onReceive(viewModel.didFinish) {
                onFinish()
            }
    }
}
