//
//  Movies.swift
//  exercise2films
//
//  Created by David on 17/9/21.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let movies = try? newJSONDecoder().decode(Movies.self, from: jsonData)

import Foundation

struct Movies: Codable, Identifiable {
    
    let id = UUID()
    let search: [Search]?
    let totalResults, response: String?

    enum CodingKeys: String, CodingKey {
        case search = "Search"
        case totalResults
        case response = "Response"
    }
}

// MARK: - Search
struct Search: Codable, Identifiable {
    let id = UUID()
    
    var title, year, imdbID: String?
    var type: TypeEnum?
    var poster: String?

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case type = "Type"
        case poster = "Poster"
    }
    
    init(title: String?) {
        self.title = title
    }
    
    init(title: String?, year: String?, imdbID: String?, type: TypeEnum?, poster: String?) {
        self.title = title
        self.year = year
        self.imdbID = imdbID
        self.type = type
        self.poster = poster
    }
}

enum TypeEnum: String, Codable {
    case movie = "movie"
}

var movies =
    (0...10).map({ _ in
        Search(title: "batman")
    })

