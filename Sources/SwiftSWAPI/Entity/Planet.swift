//
//  Planet.swift
//  
//
//  Created by Евгений Кириллов on 08.09.2020.
//

import Foundation

/// Large mass, planet or planetoid in the Star Wars Universe, at the time of 0 ABY.
struct Planet: Decodable {
    
    /// The name of this planet.
    let name: String
    
    /// The diameter of this planet in kilometers.
    let diameter: String
    
    /// The number of standard hours it takes for this planet to complete a single rotation on its axis.
    let rotationPeriod: String
    
    /// The number of standard days it takes for this planet to complete a single orbit of its local star.
    let orbitalPeriod: String
    
    /// A number denoting the gravity of this planet,
    /// where "1" is normal or 1 standard G. "2" is twice or 2 standard Gs. "0.5" is half or 0.5 standard Gs.
    let gravity: String
    
    /// The average population of sentient beings inhabiting this planet.
    let population: String
    
    /// The climate of this planet. Comma separated if diverse.
    let climate: String
    
    /// The terrain of this planet. Comma separated if diverse.
    let terrain: String
    
    /// The percentage of the planet surface that is naturally occurring water or bodies of water.
    let surfaceWater: String
    
    /// An array of People URL Resources that live on this planet.
    let residents: [String]
    
    /// An array of Film URL Resources that this starship has appeared in.
    let films: [String]
    
    /// The hypermedia URL of this resource.
    let url: String
    
    /// The ISO 8601 date format of the time that this resource was created.
    let created: String
    
    /// The ISO 8601 date format of the time that this resource was edited.
    let edited: String
}
