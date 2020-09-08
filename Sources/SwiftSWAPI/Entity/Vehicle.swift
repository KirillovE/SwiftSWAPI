//
//  Vehicle.swift
//  
//
//  Created by Евгений Кириллов on 08.09.2020.
//

import Foundation

/// Single transport craft that does not have hyperdrive capability.
struct Vehicle: Decodable {
    
    /// The name of this vehicle. The common name, such as "Sand Crawler" or "Speeder bike".
    let name: String
    
    /// The model or official name of this vehicle. Such as "All-Terrain Attack Transport".
    let model: String
    
    /// The class of this vehicle, such as "Wheeled" or "Repulsorcraft".
    let vehicleClass: String
    
    /// The manufacturer of this vehicle. Comma separated if more than one.
    let manufacturer: String
    
    /// The length of this vehicle in meters.
    let length: String
    
    /// The cost of this vehicle new, in Galactic Credits.
    let costInCredits: String
    
    /// The number of personnel needed to run or pilot this vehicle.
    let crew: String
    
    /// The number of non-essential people this vehicle can transport.
    let passengers: String
    
    /// The maximum speed of this vehicle in the atmosphere.
    let maxAtmospheringSpeed: String
    
    /// The maximum number of kilograms that this vehicle can transport.
    let cargoCapacity: String
    
    /// The maximum length of time that this vehicle can provide consumables for its entire crew without having to resupply.
    let consumables: String
    
    /// An array of Film URL Resources that this vehicle has appeared in.
    let films: [String]
    
    /// An array of People URL Resources that this vehicle has been piloted by.
    let pilots: [String]
    
    /// The hypermedia URL of this resource.
    let url: String
    
    /// The ISO 8601 date format of the time that this resource was created.
    let created: String
    
    /// The ISO 8601 date format of the time that this resource was edited.
    let edited: String
}
