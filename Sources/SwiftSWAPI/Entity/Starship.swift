//
//  Starship.swift
//  
//
//  Created by Евгений Кириллов on 08.09.2020.
//

import Foundation

/// Single transport craft that has hyperdrive capability.
struct Starship: Decodable {
    
    /// The name of this starship. The common name, such as "Death Star".
    let name: String
    
    /// The model or official name of this starship. Such as "T-65 X-wing" or "DS-1 Orbital Battle Station".
    let model: String
    
    /// The class of this starship, such as "Starfighter" or "Deep Space Mobile Battlestation".
    let starshipClass: String
    
    /// The manufacturer of this starship. Comma separated if more than one.
    let manufacturer: String
    
    /// The cost of this starship new, in galactic credits.
    let costInCredits: String
    
    ///  The length of this starship in meters.
    let length: String
    
    /// The number of personnel needed to run or pilot this starship.
    let crew: String
    
    /// The number of non-essential people this starship can transport.
    let passengers: String
    
    /// The maximum speed of this starship in the atmosphere. "N/A" if this starship is incapable of atmospheric flight.
    let maxAtmospheringSpeed: String
    
    /// The class of this starships hyperdrive.
    let hyperdriveRating: String
    
    /// The Maximum number of Megalights this starship can travel in a standard hour.
    /// A "Megalight" is a standard unit of distance and has never been defined before within the Star Wars universe.
    /// This figure is only really useful for measuring the difference in speed of starships.
    /// We can assume it is similar to AU, the distance between our Sun (Sol) and Earth.
    let MGLT: String
    
    /// The maximum number of kilograms that this starship can transport.
    let cargoCapacity: String
    
    /// The maximum length of time that this starship can provide consumables for its entire crew without having to resupply.
    let consumables: String
    
    /// An array of Film URL Resources that this starship has appeared in.
    let films: [String]
    
    /// An array of People URL Resources that this starship has been piloted by.
    let pilots: [String]
    
    /// The hypermedia URL of this resource.
    let url: String
    
    /// The ISO 8601 date format of the time that this resource was created.
    let created: String
    
    /// The ISO 8601 date format of the time that this resource was edited.
    let edited: String
}
