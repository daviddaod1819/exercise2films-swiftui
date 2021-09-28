//
//  MainView.swift
//  exercise2films-swiftui
//
//  Created by David on 22/9/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView(.vertical) {
            
            VStack {
                CustomTitleView(title: "Batman movies")
                CustomMoviesCollectionView(movies: movies)
                CustomTitleView(title: "Categories")
                CustomCategoriesCollectionView(categories: ["Action", "Adventure", "Sci-Fy", "Terror"])
                CustomTitleView(title: "Superman movies")
                CustomMoviesCollectionView(movies: movies, withTitle: false, width: 150, height: 170)
            }.padding(.vertical)
            
        }.modifier(BackgroundModifier())
            .navigationBarTitle("Movies", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "bell")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(.white)
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        SearchView()
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.white)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        Color.white
                            .overlay(
                                Text("A")
                                    .bold()
                                    .foregroundColor(.black)
                            )
                            .frame(width: 35, height: 35)
                            .cornerRadius(17.5)
                    }
                    
                }
            }
            .navigationBarBackButtonHidden(true)
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
