//
//  BackgroundModifieer.swift
//  exercise2films-swiftui
//
//  Created by David on 27/9/21.
//

import SwiftUI

struct BackgroundModifier: ViewModifier {
    
    var backgroundColor: Color?
    var barColor: Color?
    
    func body(content: Content) -> some View {
        VStack(spacing: 0) {
            (barColor ?? Color("background"))
                .edgesIgnoringSafeArea(.all)
                .frame(height: 1)
            ZStack {
                (backgroundColor ?? Color("background"))
                    .edgesIgnoringSafeArea(.all)
                content
                
            }
        }
        
    }
}
