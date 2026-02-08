//
//  RegisterView.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var viewModel: RegisterViewModel
    
    var body: some View {
        Text("Register View")
    }
}

#Preview {
    RegisterView(viewModel: RegisterViewModel(interactor: RegisterInteractor()))
}
