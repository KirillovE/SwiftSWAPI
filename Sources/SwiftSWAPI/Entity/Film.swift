//
//  Film.swift
//  
//
//  Created by Евгений Кириллов on 07.09.2020.
//

import Foundation

/// Single film.
struct Film: Decodable {
    
    /// The title of this film.
    let title: String
    
    /// The episode number of this film.
    let episodeId: Int
    
    /// The opening paragraphs at the beginning of this film.
    let openingCrawl: String
    
    /// The name of the director of this film.
    let director: String
    
    /// The name(s) of the producer(s) of this film. Comma separated.
    let producer: String
    
    /// The ISO 8601 date format of film release at original creator country.
    let releaseDate: String
    
    /// An array of species resource URLs that are in this film.
    let species: [String]
    
    /// An array of starship resource URLs that are in this film.
    let starships: [String]
    
    /// An array of vehicle resource URLs that are in this film.
    let vehicles: [String]
    
    /// An array of people resource URLs that are in this film.
    let characters: [String]
    
    /// An array of planet resource URLs that are in this film.
    let planets: [String]
    
    /// The hypermedia URL of this resource.
    let url: String
    
    /// The ISO 8601 date format of the time that this resource was created.
    let created: String
    
    /// The ISO 8601 date format of the time that this resource was edited.
    let edited: String
}
