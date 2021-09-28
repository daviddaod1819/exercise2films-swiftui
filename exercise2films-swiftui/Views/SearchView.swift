//
//  SearchView.swift
//  exercise2films-swiftui
//
//  Created by David on 27/9/21.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        GeometryReader { geometry in
            List {
                VStack(alignment: .leading) {
                    CustomTitleView(title: "Trending Search")
                        
                    CustomMoviesCollectionView(
                        movies: movies,
                        withTitle: false,
                        width: 210,
                        height: 250
                    )
                        
                }.listRowBackground(Color.clear)
                .listRowInsets(.init(top: 20, leading: 0, bottom: 20, trailing: 0))
                
                VStack(alignment: .leading) {
                    CustomTitleView(title: "Top Search")
                        
                    CustomMoviesCollectionView(
                        movies: movies,
                        cellPerColumn: 2 ,
                        withTitle: false,
                        width: 120, height: 130
                    )
                        
                }.listRowBackground(Color("profile-color"))
                .listRowInsets(.init(top: 20, leading: 0, bottom: 20, trailing: 0))
                
            }.onAppear {
                UITableView.appearance().backgroundColor = .clear
                UITableView.appearance().separatorColor = UIColor(named: "background")
            }
            .modifier(BackgroundModifier())
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Text("Search Movies, Shows, Etc")
                            .font(.system(size: 15))
                            .opacity(0.5)
                        Spacer()
                        Image(systemName: "mic.fill")
                            .font(.system(size: 15))
                    }.foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.vertical, 9)
                        .background(Color("profile-color"))
                        .cornerRadius(15.0)
                        .frame(width: geometry.size.width * 0.85)
                }
        }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
