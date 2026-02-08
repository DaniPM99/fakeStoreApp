//
//  Onboarding Interactor.swift
//  fakeStoreApp
//
//  Created by Daniel Parra Martin on 24/1/26.
//

import UIKit

struct OnboardingInteractor {

    var fetchPages: () async -> [OnboardingPage]

    static func interactor() -> OnboardingInteractor {
        return OnboardingInteractor(
            fetchPages: {
                try? await Task.sleep(until: .now + .seconds(2), clock: .continuous)
                return pagesMock
            })
    }
}

// Pages
let pagesMock = [
    OnboardingPage(title: "Easy, Fast & Trusted", subtitle: "Fast money transfer and gauranteed safe transactions with others.", image: "signature"),
    OnboardingPage(title: "Saving Your Money", subtitle: "Track the progress of your savings and start a habit of saving with TransferMe.", image: "eurosign.arrow.trianglehead.counterclockwise.rotate.90"),
    OnboardingPage(title: "Free Transactions", subtitle: "Provides the quality of the financial system with free money transactions without any fees.", image: "giftcard.fill"),
    OnboardingPage(title: "International Transactions", subtitle: "Provides the 100% freedom of the  financial management with lowest fees on International transactions.", image: "dollarsign.bank.building.fill"),
    OnboardingPage(title: "Multiple Credit Cards", subtitle: "Provides the 100% freedom of the financial management with Multiple Payment Options for local & International Payments.", image: "creditcard.and.numbers"),
    OnboardingPage(title: "Bills Payment Made Easy", subtitle: "Pay monthly or daily bills at home in a site of TransferMe.", image: "banknote.fill"),
    OnboardingPage(title: "Color Your Cards", subtitle: "Provides better cards management  when using Multiple Cards by using a  different color for each payment  method.", image: "creditcard.fill")
]
