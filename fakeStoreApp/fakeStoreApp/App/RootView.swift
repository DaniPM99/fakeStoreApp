//
//  RootView.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import SwiftUI

struct RootView: View {

    @StateObject var coordinator = AppCoordinator()

    var body: some View {
        switch coordinator.flow {
        case .onboarding:
            OnboardingFlow(
                onFinish: {
                    coordinator.flow = .register
                },
                onTapLogin: {
                    coordinator.flow = .login
                }
            )
            
        case .register:
            RegisterFlow(
                onFinish: {
                    coordinator.flow = .main
                }
            )
            
        case .login:
            LoginFlow(
                onFinish: {
                    coordinator.flow = .main
                }
            )

        case .main:
            MainFlow(
                onFinish: {
                    coordinator.flow = .main
                }
            )
        }
    }
}

