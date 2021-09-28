//
//  CustomCollectionMoviesView.swift
//  exercise2films-swiftui
//
//  Created by David on 22/9/21.
//

import SwiftUI

struct CustomMoviesCollectionView: View {
    
    var movies: [Search]
    var cellPerColumn: Int = 1
    var withTitle: Bool = true
    var width: CGFloat = 300 * 0.67
    var height: CGFloat = 300
    var spacing: CGFloat = 10
    var tintColor: Color = .white
    var cornerRadiusImage: CGFloat = 30
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHGrid(rows: (1...cellPerColumn).map({ _ in
                GridItem(.flexible())
            }), spacing: spacing + 5) {
                
                ForEach(movies) { movie in
                    NavigationLink {
                        DetailView(movie: movieExample)
                    } label: {
                        CustomMoviesCollectionViewCell(
                            title: withTitle ? movie.title : nil,
                            image: UIImage(named: "no-image")!,
                            tintColor: tintColor,
                            width: width,
                            height: height,
                            cornerRadiusImage: cornerRadiusImage
                        )
                    }.padding(.bottom, spacing / 2)
                }
                
            }.padding(.horizontal)
            
        }.frame(height: withTitle ? (height + 30 + spacing) * CGFloat(cellPerColumn) : (height + spacing) * CGFloat(cellPerColumn) )
            .padding(.bottom, 5)
        
    }
}

struct CustomMoviesCollectionViewCell: View {
    
    var title: String?
    var image: UIImage
    var tintColor: Color
    var width: CGFloat
    var height: CGFloat
    var cornerRadiusImage: CGFloat
    
    var body: some View {
        VStack {
            Image(uiImage: image)
                .resizable()
                .scaledToFill()
                .frame(width: width, height: height)
                .cornerRadius(cornerRadiusImage)
            if let title = title {
                Text(title)
                    .foregroundColor(tintColor)
            }
        }
    }
}

struct CustomCollectionViewMovies_Previews: PreviewProvider {
    static var previews: some View {
        CustomMoviesCollectionView(movies: movies, tintColor: .black).previewLayout(.sizeThatFits)
    }
}
