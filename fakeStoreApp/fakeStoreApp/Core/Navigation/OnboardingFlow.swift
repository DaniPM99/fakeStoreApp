//
//  OnboardingCoordinator.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import SwiftUI

struct OnboardingFlow: View {

    let onFinish: () -> Void
    let onTapLogin: () -> Void

    var body: some View {
        let viewModel = OnboardingViewModel(
            interactor: .interactor()
        )

        OnboardingView(viewModel: viewModel)
            .onReceive(viewModel.didFinish) {
                onFinish()
            }
            .onReceive(viewModel.didTapLogin) {
                onTapLogin()
            }
    }
}
