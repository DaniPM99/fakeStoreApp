//
//  MainFlow.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import SwiftUI

struct MainFlow: View {

    let onFinish: () -> Void

    var body: some View {
        let viewModel = MainViewModel(
            interactor: .interactor()
        )

        MainView(viewModel: viewModel)
            .onReceive(viewModel.didFinish) {
                onFinish()
            }
    }
}
