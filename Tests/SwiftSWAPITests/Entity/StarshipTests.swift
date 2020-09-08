//
//  StarshipTests.swift
//  
//
//  Created by Евгений Кириллов on 08.09.2020.
//

import XCTest
@testable import SwiftSWAPI

final class StarshipTests: XCTestCase {
    
    func testStarshipDecoding() {
        let starshipInstanse = try! decoder.decode(Starship.self, from: starshipJSON)
        
        let validName = starshipInstanse.name == "Jedi Interceptor"
        let validModel = starshipInstanse.model == "Eta-2 Actis-class light interceptor"
        let validStarshipClass = starshipInstanse.starshipClass == "starfighter"
        let validManufacturer = starshipInstanse.manufacturer == "Kuat Systems Engineering"
        let validCostInCredits = starshipInstanse.costInCredits == "320000"
        let validLength = starshipInstanse.length == "5.47"
        let validCrew = starshipInstanse.crew == "1"
        let validPassengers = starshipInstanse.passengers == "0"
        let validMaxAtmospheringSpeed = starshipInstanse.maxAtmospheringSpeed == "1500"
        let validHyperdriveRating = starshipInstanse.hyperdriveRating == "1.0"
        let validMglt = starshipInstanse.MGLT == "unknown"
        let validCargoCapacity = starshipInstanse.cargoCapacity == "60"
        let validConsumables = starshipInstanse.consumables == "2 days"
        let validFilms = starshipInstanse.films == [
          "http://swapi.dev/api/films/6/"
        ]
        let validPilots = starshipInstanse.pilots == [
          "http://swapi.dev/api/people/10/",
          "http://swapi.dev/api/people/11/"
        ]
        let validUrl = starshipInstanse.url == "http://swapi.dev/api/starships/65/"
        let validCreated = starshipInstanse.created == "2014-12-20T19:56:57.468000Z"
        let validEdited = starshipInstanse.edited == "2014-12-20T21:23:49.951000Z"
        
        let allValid = validName
            && validModel
            && validStarshipClass
            && validManufacturer
            && validCostInCredits
            && validLength
            && validCrew
            && validPassengers
            && validMaxAtmospheringSpeed
            && validHyperdriveRating
            && validMglt
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
        ("testStarshipDecoding", testStarshipDecoding)
    ]
}

extension StarshipTests {
    var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
    
    var starshipJSON: Data {
        """
            {
              "name": "Jedi Interceptor",
              "model": "Eta-2 Actis-class light interceptor",
              "manufacturer": "Kuat Systems Engineering",
              "cost_in_credits": "320000",
              "length": "5.47",
              "max_atmosphering_speed": "1500",
              "crew": "1",
              "passengers": "0",
              "cargo_capacity": "60",
              "consumables": "2 days",
              "hyperdrive_rating": "1.0",
              "MGLT": "unknown",
              "starship_class": "starfighter",
              "pilots": [
                "http://swapi.dev/api/people/10/",
                "http://swapi.dev/api/people/11/"
              ],
              "films": [
                "http://swapi.dev/api/films/6/"
              ],
              "created": "2014-12-20T19:56:57.468000Z",
              "edited": "2014-12-20T21:23:49.951000Z",
              "url": "http://swapi.dev/api/starships/65/"
            }
        """.data(using: .utf8)!
    }
}
