//
//  AppCoordinator.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 17/1/26.
//

internal import Combine
import SwiftUI

final class AppCoordinator: ObservableObject {

    enum Flow {
        case onboarding
        case register
        case login
        case main
    }

    @Published var flow: Flow = .onboarding
}
