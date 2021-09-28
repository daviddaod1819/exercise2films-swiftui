//
//  CustomTitle.swift
//  exercise2films-swiftui
//
//  Created by David on 27/9/21.
//

import SwiftUI

struct CustomTitleView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.white)
                .bold()
            Spacer()
        }.padding(.horizontal)
    }
}

struct CustomTitleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTitleView(title: "Batman")
    }
}
