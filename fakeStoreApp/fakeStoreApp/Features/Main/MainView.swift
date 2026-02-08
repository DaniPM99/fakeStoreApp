//
//  MainView.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        Text("Main View")
    }
}

#Preview {
    MainView(viewModel: MainViewModel(interactor: MainInteractor()))
}
