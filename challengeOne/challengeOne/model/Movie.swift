//
//  Movie.swift
//  challengeOne
//
//  Created by cit on 17/05/22.
//

import Foundation

struct Movie{
    
    var id: Int
    var voteAverage: Double
    var title:  String
    var originalTitle:  String
    var popularity: Double
    var postePath: String
    var backdropPath: String
    var overview: String
    var realeseDate: String
    var genres: [Genre]
    
    
    init(id: Int, voteAverage: Double, title: String, originalTitle: String,
         popularity: Double, postePath: String, backdropPath: String, overview: String,
         realeseDate: String, genres: [Genre]){
        
        self.id = id
        self.voteAverage = voteAverage
        self.title = title
        self.originalTitle = originalTitle
        self.popularity = popularity
        self.postePath = postePath
        self.backdropPath = backdropPath
        self.overview = overview
        self.realeseDate = realeseDate
        self.genres = genres
        
    }
}
