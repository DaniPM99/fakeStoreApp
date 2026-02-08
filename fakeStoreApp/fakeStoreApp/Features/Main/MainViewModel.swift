//
//  MainViewModel.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import Foundation
internal import Combine

final class MainViewModel: ObservableObject {
    
    let didFinish = PassthroughSubject<Void, Never>()

    private let interactor: MainInteractor

    init(interactor: MainInteractor) {
        self.interactor = interactor
    }

    @MainActor
    func onAppear() async {
        //pages = await interactor.fetchPages()
    }
}
