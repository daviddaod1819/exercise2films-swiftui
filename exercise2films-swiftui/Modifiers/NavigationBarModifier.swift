//
//  NavigationBarModifier.swift
//  exercise2films-swiftui
//
//  Created by David on 21/9/21.
//

import SwiftUI

struct NavigationBarModifier: ViewModifier {
        
    var backgroundColor: UIColor?
    var titleColor: UIColor?

    init(backgroundColor: UIColor?, titleColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = backgroundColor
        let backIndicatorImage = UIImage(systemName: "chevron.backward", withConfiguration: UIImage.SymbolConfiguration(weight: .bold))?.withTintColor(.white, renderingMode: .alwaysOriginal)
        
        coloredAppearance.setBackIndicatorImage(backIndicatorImage, transitionMaskImage: backIndicatorImage)
        coloredAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .white, .font : UIFont.boldSystemFont(ofSize: 23)]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .white, .font : UIFont.boldSystemFont(ofSize: 23)]
        coloredAppearance.backButtonAppearance.normal.titleTextAttributes = [.foregroundColor: titleColor ?? .white, .font : UIFont.boldSystemFont(ofSize: 18)]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
    
    func body(content: Content) -> some View {
        content
    }
}
