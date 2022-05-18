//
//  ViewController.swift
//  challengeOne
//
//  Created by cit on 17/05/22.
//

import UIKit
import SwiftDate

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let drama = Genre(id: 1, name: "Drama")
        let comedy = Genre(id: 2, name: "Comedy")
        let action = Genre(id: 3, name: "Action")
        
        //        let movie = Movie(id: 2, voteAverage: 8, title: "Pantera Negra", originalTitle: "Pantera", popularity: 10, postePath: "I dont't know", backdropPath: "I dont't know", overview: "Great Movie", realeseDate: "19/01/2018", genres: [drama, action])
        
        
        var movies:  [Movie] {[
            
            Movie(id: 1, voteAverage: 7, title: "Scoob Doo", originalTitle: "Scoob Doo", popularity: 8, postePath: "I dont't know", backdropPath: "I dont't know", overview: "Good Movie", realeseDate: "19/01/2015", genres: [action, comedy]),
            
            Movie(id: 2, voteAverage: 8, title: "Pantera Negra", originalTitle: "Pantera", popularity: 10, postePath: "I dont't know", backdropPath: "I dont't know", overview: "Great Movie", realeseDate: "19/01/2018", genres: [drama, action]) ]
        }
        
        
        func filteMovieForGenre(genre: String){
            
            for movie in movies {
                for genre in movie.genres {
                    if genre.name == "Action"{
                        print(movie.title)
                    }
                    
                }
            }
        }
            
        func filterRealeaseDate(movies: [Movie]){
            let films = movies.sorted {data1, date2 in data1.realeseDate > date2.realeseDate }
            
            for i in films {
                print(i.realeseDate)
                
            }
                
        }
        
        
        func filterMovieForPopularity(movies: [Movie]){
            let films = movies.sorted {popularityOne, popularityTwo in popularityOne.realeseDate > popularityTwo.realeseDate }
            
            for i in films {
                print(i.popularity)
                
            }
                
        }
        
        
        
        filterRealeaseDate(movies: movies)
        filteMovieForGenre(genre: "Action")
        filterMovieForPopularity(movies: movies)
        
    }
    
}
    
