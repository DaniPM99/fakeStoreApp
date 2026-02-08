//
//  OnboardingView.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 17/1/26.
//

import SwiftUI

struct OnboardingView: View {
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack (spacing: 0) {
                Spacer()
                
                topPart
                    .padding(.vertical, 8)
                    .padding(.horizontal, 36)
                
                TabView(selection: $viewModel.currentStep) {
                    ForEach(Array(viewModel.pages.enumerated()), id: \.offset) { index, page in
                        onboardingCard(page: page, index: index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                HStack {
                    ForEach(0..<viewModel.pages.count, id: \.self) { index in
                        Circle()
                            .frame(width: index == viewModel.currentStep ? 12 : 8)
                            .foregroundStyle(.white)
                            .opacity(index == viewModel.currentStep ? 1 : 0.5)
                    }
                }
                
                Spacer()
            }
        }
        .safeAreaInset(edge: .bottom) {
            bottomPart
                .padding(.horizontal, 32)
                .padding(.bottom, 16)
                .background(Color.black)
        }
        .task {
            await viewModel.onAppear()
        }
    }
    
    var topPart: some View {
        HStack {
            Button {
                // settings action
            } label: {
                Image(systemName: "gearshape")
                    .foregroundStyle(.white)
            }

            Spacer()

            Text("FakeStore")
                .foregroundStyle(.white)
                .font(.headline)
        }
    }
    
    func onboardingCard(page: OnboardingPage, index: Int) -> some View {
        VStack {
            Spacer()
            
            Image(systemName: page.image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.gray)
                .frame(width: 200)
                .rotationEffect(Angle(degrees: 350))
            
            Spacer()

            VStack(spacing: 4) {
                Text(page.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                
                Text(page.subtitle)
                    .foregroundStyle(.gray)
                    .font(.system(size: 13, weight: .medium))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(
                colors: [
                    Color.cardBackground.opacity(0.95),
                    Color.cardBackgroundSecondary.opacity(0.9)
                ],
                startPoint: .bottomTrailing,
                endPoint: .topLeading
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.vertical, 24)
        .padding(.horizontal, 36)
        .tag(index)
    }
    
    var bottomPart: some View {
        VStack {
            HStack {
                if viewModel.isLastPage {
                    AppButton(textButton: "Inicia Sesión") {
                        viewModel.loginTapped()
                    }
                    Spacer()
                }
                AppButton(textButton: viewModel.isLastPage ? "Registrate" : "Continuar") {
                    viewModel.continueTapped()
                }
            }
            .opacity(viewModel.isLastPage || viewModel.currentStep < viewModel.pages.count ? 1 : 0)
        }
    }
}
