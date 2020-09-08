//
//  VehicleTests.swift
//  
//
//  Created by Евгений Кириллов on 08.09.2020.
//

import XCTest
@testable import SwiftSWAPI

final class VehicleTests: XCTestCase {
    
    func testVehicleDecoding() {
        let vehicleInstanse = try! decoder.decode(Vehicle.self, from: vehicleJSON)
        
        let validName = vehicleInstanse.name == "Zephyr-G swoop bike"
        let validModel = vehicleInstanse.model == "Zephyr-G swoop bike"
        let validStarshipClass = vehicleInstanse.vehicleClass == "repulsorcraft"
        let validManufacturer = vehicleInstanse.manufacturer == "Mobquet Swoops and Speeders"
        let validCostInCredits = vehicleInstanse.costInCredits == "5750"
        let validLength = vehicleInstanse.length == "3.68"
        let validCrew = vehicleInstanse.crew == "1"
        let validPassengers = vehicleInstanse.passengers == "1"
        let validMaxAtmospheringSpeed = vehicleInstanse.maxAtmospheringSpeed == "350"
        let validCargoCapacity = vehicleInstanse.cargoCapacity == "200"
        let validConsumables = vehicleInstanse.consumables == "none"
        let validFilms = vehicleInstanse.films == [
          "http://swapi.dev/api/films/5/"
        ]
        let validPilots = vehicleInstanse.pilots == [
          "http://swapi.dev/api/people/11/"
        ]
        let validUrl = vehicleInstanse.url == "http://swapi.dev/api/vehicles/44/"
        let validCreated = vehicleInstanse.created == "2014-12-20T16:24:16.026000Z"
        let validEdited = vehicleInstanse.edited == "2014-12-20T21:30:21.714000Z"
        
        let allValid = validName
            && validModel
            && validStarshipClass
            && validManufacturer
            && validCostInCredits
            && validLength
            && validCrew
            && validPassengers
            && validMaxAtmospheringSpeed
            && validCargoCapacity
            && validConsumables
            && validFilms
            && validPilots
            && validUrl
            && validCreated
            && validEdited
        
        XCTAssert(allValid, "Failed to decode JSON")
    }
    
    static var allTests = [
        ("testVehicleDecoding", testVehicleDecoding)
    ]
}

extension VehicleTests {
    var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
    
    var vehicleJSON: Data {
        """
            {
              "name": "Zephyr-G swoop bike",
              "model": "Zephyr-G swoop bike",
              "manufacturer": "Mobquet Swoops and Speeders",
              "cost_in_credits": "5750",
              "length": "3.68",
              "max_atmosphering_speed": "350",
              "crew": "1",
              "passengers": "1",
              "cargo_capacity": "200",
              "consumables": "none",
              "vehicle_class": "repulsorcraft",
              "pilots": [
                "http://swapi.dev/api/people/11/"
              ],
              "films": [
                "http://swapi.dev/api/films/5/"
              ],
              "created": "2014-12-20T16:24:16.026000Z",
              "edited": "2014-12-20T21:30:21.714000Z",
              "url": "http://swapi.dev/api/vehicles/44/"
            }
        """.data(using: .utf8)!
    }
}
