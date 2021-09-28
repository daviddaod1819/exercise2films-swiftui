//
//  DetailView.swift
//  exercise2films-swiftui
//
//  Created by David on 22/9/21.
//

import SwiftUI

struct DetailView: View {
    
    var movie: Movie
        
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                Color("background")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    HeadView(
                        title: movie.title ?? "Title",
                        category: movie.genre ?? "Category",
                        duration: movie.runtime ?? "Duration",
                        stars: movie.imdbRating ?? "Start",
                        size: geometry.size,
                        image: Image("example-detail")
                    )
                    
                    CustomDescriptionView(
                        plot: movie.plot ?? "Plot",
                        director: movie.director ?? "Michael Bay",
                        production: movie.production ?? "Warner Bros"
                    )
                    
                }
            }.foregroundColor(.white)
            
        }.edgesIgnoringSafeArea(.top)
    }
}


struct HeadView: View {
    
    let title: String
    let category: String
    let duration: String
    let stars: String
    let size: CGSize
    let image: Image
    
    var body: some View {
        ZStack {
            image
                .resizable()
                .scaledToFill()
                .frame(width: size.width, height: size.height / 2)
            
            Color.black.opacity(0.5)
            
            VStack {
                
                Spacer()
                
                CustomTitleBarView(
                    title: title,
                    category: category,
                    duration: duration,
                    stars: stars
                )
                
            }
        }
    }
}

struct CustomTitleBarView: View {
    
    let title: String
    let category: String
    let duration: String
    let stars: String
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.5)
                .cornerRadius(25)
            VStack(spacing: 10) {
                HStack {
                    Text(title)
                        .font(.system(size: 25 ))
                        .bold()
                        .padding(.horizontal)
                    Spacer()
                }
                
                HStack {
                    Color("category-color")
                        .overlay(
                            Text(category)
                        )
                        .frame( height: 45)
                        .cornerRadius(29)
                    
                    Color("duration-color")
                        .overlay(
                            Text(duration)
                        )
                        .frame(height: 45)
                        .cornerRadius(29)
                    
                    Color("stars-color")
                        .overlay(
                            HStack {
                                Text(stars)
                                Image(systemName: "star.fill")
                            }
                        )
                        .frame(height: 45)
                        .cornerRadius(29)
                    
                }.padding(.horizontal)
                
            }.padding(.vertical)
        }.frame(height: 120)
            .padding(.horizontal)
            .padding(.vertical, 30)
    }
}

struct CustomDescriptionView: View {
    
    let plot: String
    let director: String
    let production: String
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Plot")
                        .bold()
                        .foregroundColor(Color("title-detail-color"))
                        .padding(.bottom, 5)
                    Spacer()
                }
                
                Text(plot)
                    .font(.system(size: 15))
            }
            
            VStack(spacing: 5) {
                Text("Director")
                    .bold()
                    .foregroundColor(Color("title-detail-color"))
                Text(director)
                    .bold()
            }.padding(.vertical)
            
            VStack(spacing: 5) {
                Text("Prodution")
                    .bold()
                    .foregroundColor(Color("title-detail-color"))
                Text(production)
                    .bold()
            }
        }.padding()
    }
}



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(movie: movieExample)
    }
}
