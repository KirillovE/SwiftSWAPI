//
//  Species.swift
//  
//
//  Created by Евгений Кириллов on 08.09.2020.
//

import Foundation

/// Type of person or character within the Star Wars Universe.
struct Species: Decodable {
    
    /// The name of this species.
    let name: String
    
    /// The classification of this species, such as "mammal" or "reptile".
    let classification: String
    
    /// The designation of this species, such as "sentient".
    let designation: String
    
    /// The average height of this species in centimeters.
    let averageHeight: String
    
    /// The average lifespan of this species in years.
    let averageLifespan: String
    
    /// A comma-separated string of common eye colors for this species, "none" if this species does not typically have eyes.
    let eyeColors: String
    
    /// A comma-separated string of common hair colors for this species, "none" if this species does not typically have hair.
    let hairColors: String
    
    /// A comma-separated string of common skin colors for this species, "none" if this species does not typically have skin.
    let skinColors: String
    
    /// The language commonly spoken by this species.
    let language: String
    
    /// The URL of a planet resource, a planet that this species originates from.
    let homeworld: String
    
    /// An array of People URL Resources that are a part of this species.
    let people: [String]
    
    /// An array of Film URL Resources that this starship has appeared in.
    let films: [String]
    
    /// The hypermedia URL of this resource.
    let url: String
    
    /// The ISO 8601 date format of the time that this resource was created.
    let created: String
    
    /// The ISO 8601 date format of the time that this resource was edited.
    let edited: String
}
