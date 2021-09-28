//
//  Movie.swift
//  exercise2films
//
//  Created by David on 17/9/21.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let movie = try? newJSONDecoder().decode(Movie.self, from: jsonData)
import Foundation

let movieExample = Movie(
    title: "Batman v Superman: Dawn of Justice",
    runtime: "152 min",
    genre: "Action",
    director: "Zack Snyder",
    plot: "Fearing that the actions of Superman are left unchecked, Batman takes on the Man of Steel, while the world wrestles with what kind of a hero it really needs.",
    poster: "https://m.media-amazon.com/images/M/MV5BYThjYzcyYzItNTVjNy00NDk0LTgwMWQtYjMwNmNlNWJhMzMyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
    imdbRating: "6.4",
    imdbID: "tt2975590",
    production: "Cruel and Unusual, Warner Bros., Syncopy, Atlas Entertainment, DC Entertainment"
)

struct Movie: Codable {
    var title, year, rated, released: String?
    var runtime, director, writer: String?
    var genre: String?
    var actors, plot, language, country: String?
    var awards: String?
    var poster: String?
    var ratings: [Rating]?
    var metascore, imdbRating, imdbVotes, imdbID: String?
    var type, dvd, boxOffice, production: String?
    var website, response: String?

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case rated = "Rated"
        case released = "Released"
        case runtime = "Runtime"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case language = "Language"
        case country = "Country"
        case awards = "Awards"
        case poster = "Poster"
        case ratings = "Ratings"
        case metascore = "Metascore"
        case imdbRating, imdbVotes, imdbID
        case type = "Type"
        case dvd = "DVD"
        case boxOffice = "BoxOffice"
        case production = "Production"
        case website = "Website"
        case response = "Response"
    }

    init(title: String?, year: String?, rated: String?, released: String?, runtime: String?, genre: String?, director: String?, writer: String?, actors: String?, plot: String?, language: String?, country: String?, awards: String?, poster: String?, ratings: [Rating]?, metascore: String?, imdbRating: String?, imdbVotes: String?, imdbID: String?, type: String?, dvd: String?, boxOffice: String?, production: String?, website: String?, response: String?) {
        self.title = title
        self.year = year
        self.rated = rated
        self.released = released
        self.runtime = runtime
        self.genre = genre
        self.director = director
        self.writer = writer
        self.actors = actors
        self.plot = plot
        self.language = language
        self.country = country
        self.awards = awards
        self.poster = poster
        self.ratings = ratings
        self.metascore = metascore
        self.imdbRating = imdbRating
        self.imdbVotes = imdbVotes
        self.imdbID = imdbID
        self.type = type
        self.dvd = dvd
        self.boxOffice = boxOffice
        self.production = production
        self.website = website
        self.response = response
    }
    
    init(title: String?, runtime: String?, genre: String?, director: String?, plot: String?, poster: String?, imdbRating: String?, imdbID: String?, production: String?) {
        self.title = title
        self.runtime = runtime
        self.genre = genre
        self.director = director
        self.plot = plot
        self.poster = poster
        self.imdbRating = imdbRating
        self.imdbID = imdbID
        self.production = production
    }
}

// MARK: - Rating
class Rating: Codable {
    let source, value: String?

    enum CodingKeys: String, CodingKey {
        case source = "Source"
        case value = "Value"
    }

    init(source: String?, value: String?) {
        self.source = source
        self.value = value
    }
}
