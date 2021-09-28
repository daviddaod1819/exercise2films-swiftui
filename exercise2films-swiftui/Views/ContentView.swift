//
//  ContentView.swift
//  exercise2films-swiftui
//
//  Created by David on 21/9/21.
//

import SwiftUI

struct ContentView: View {
            
    var body: some View {
        NavigationView {
            LoginView()
        }.modifier(NavigationBarModifier(backgroundColor: .clear, titleColor: UIColor.white))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

