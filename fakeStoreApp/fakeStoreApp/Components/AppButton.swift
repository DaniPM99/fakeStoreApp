//
//  AppButton.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 8/2/26.
//

import SwiftUI

struct AppButton: View {
    let textButton: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(textButton)
                .font(.system(size: 16, weight: .bold))
                .textCase(.uppercase)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black.opacity(0.1))
                )
        }
    }
}

#Preview {
    AppButton(textButton: "Continue", action: {})
}
