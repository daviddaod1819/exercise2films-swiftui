//
//  CustomCollectionMoviesView.swift
//  exercise2films-swiftui
//
//  Created by David on 22/9/21.
//

import SwiftUI

struct CustomCategoriesCollectionView: View {
    
    var categories: [String]
    var height: CGFloat = 16
    var tintColor: Color = .white
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHGrid(rows: [GridItem(.flexible())]) {
                
                ForEach(categories, id: \.self) { category in
                    CustomCategoriesCollectionViewCell(category: category, tintColor: tintColor)
                }
                
            }.padding(.horizontal)
        }.frame(height: height + 28)
        .padding(.bottom)
    }
}

struct CustomCategoriesCollectionViewCell: View {
    
    var category: String
    var tintColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: "pencil.circle.fill")
                .foregroundColor(tintColor)
                .foregroundColor(.black)
            Text(category)
                .foregroundColor(tintColor)
        }.padding(.horizontal)
            .padding(.vertical, 12)
            .background(Color(red: CGFloat.random(in: 0...0.5), green: CGFloat.random(in: 0...0.5), blue: CGFloat.random(in: 0...0.5)))
            .cornerRadius(15.0)
    }
}

struct CustomCollectionViewCategories_Previews: PreviewProvider {
    static var previews: some View {
        CustomCategoriesCollectionView(categories: ["Action", "Adventure", "Sci-Fy", "Terror"]).previewLayout(.sizeThatFits)
    }
}


