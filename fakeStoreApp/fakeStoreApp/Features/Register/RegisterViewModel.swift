//
//  RegisterViewModel.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import Foundation
internal import Combine

final class RegisterViewModel: ObservableObject {
    
    let didFinish = PassthroughSubject<Void, Never>()

    private let interactor: RegisterInteractor

    init(interactor: RegisterInteractor) {
        self.interactor = interactor
    }

    @MainActor
    func onAppear() async {
        //pages = await interactor.fetchPages()
    }
}
