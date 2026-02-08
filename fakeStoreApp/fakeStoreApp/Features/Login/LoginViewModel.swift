//
//  LoginViewModel.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import Foundation
internal import Combine

final class LoginViewModel: ObservableObject {
    
    let didFinish = PassthroughSubject<Void, Never>()

    private let interactor: LoginInteractor

    init(interactor: LoginInteractor) {
        self.interactor = interactor
    }

    @MainActor
    func onAppear() async {
        //pages = await interactor.fetchPages()
    }
}
