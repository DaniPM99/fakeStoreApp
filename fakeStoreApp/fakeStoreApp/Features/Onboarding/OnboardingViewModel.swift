//
//  OnboardingViewModel.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 20/1/26.
//

import Foundation
internal import Combine

final class OnboardingViewModel: ObservableObject {
    @Published var currentStep = 0
    @Published private(set) var pages: [OnboardingPage] = []
    
    let didFinish = PassthroughSubject<Void, Never>()
    
    let didTapLogin = PassthroughSubject<Void, Never>()

    private let interactor: OnboardingInteractor

    init(interactor: OnboardingInteractor) {
        self.interactor = interactor
    }

    @MainActor
    func onAppear() async {
        pages = await interactor.fetchPages()
    }

    func continueTapped() {
        if currentStep == pages.count - 1 {
            didFinish.send()
        } else {
            currentStep += 1
        }
    }
    
    func loginTapped() {
        didTapLogin.send()
    }

    var isLastPage: Bool {
        currentStep == pages.count - 1
    }
}

