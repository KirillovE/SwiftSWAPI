//
//  EntityTests.swift
//  
//
//  Created by Евгений Кириллов on 07.09.2020.
//

import XCTest
@testable import SwiftSWAPI

final class EntityTests: XCTestCase {
    
    func testPersonDecoding() {
        let json = personJSON.data(using: .utf8)!
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let personInstance = try! decoder.decode(Person.self, from: json)
        
        let validName = personInstance.name == "Anakin Skywalker"
        let validHeight = personInstance.height == "188"
        let validMass = personInstance.mass == "84"
        let validHairColor = personInstance.hairColor == "blond"
        let validSkinColor = personInstance.skinColor == "fair"
        let validEyeColor = personInstance.eyeColor == "blue"
        let validBirthYear = personInstance.birthYear == "41.9BBY"
        let validGender = personInstance.gender == "male"
        let validHomeworld = personInstance.homeworld == "http://swapi.dev/api/planets/1/"
        let validFilms = personInstance.films == [
          "http://swapi.dev/api/films/4/",
          "http://swapi.dev/api/films/5/",
          "http://swapi.dev/api/films/6/"
        ]
        let validSpecies = personInstance.species == []
        let validVehicles = personInstance.vehicles == [
          "http://swapi.dev/api/vehicles/44/",
          "http://swapi.dev/api/vehicles/46/"
        ]
        let validStarships = personInstance.starships == [
          "http://swapi.dev/api/starships/39/",
          "http://swapi.dev/api/starships/59/",
          "http://swapi.dev/api/starships/65/"
        ]
        let validCreated = personInstance.created == "2014-12-10T16:20:44.310000Z"
        let validEdited = personInstance.edited == "2014-12-20T21:17:50.327000Z"
        let validUrl = personInstance.url == "http://swapi.dev/api/people/11/"

        let allValid = validName
            && validHeight
            && validMass
            && validHairColor
            && validSkinColor
            && validEyeColor
            && validBirthYear
            && validGender
            && validHomeworld
            && validFilms
            && validSpecies
            && validVehicles
            && validStarships
            && validCreated
            && validEdited
            && validUrl
        
        XCTAssert(allValid, "Failed to decode JSON")
    }
    
    static var allTests = [
        ("testPersonDecoding", testPersonDecoding),
    ]
}

extension EntityTests {
    var personJSON: String {
        """
            {
              "name": "Anakin Skywalker",
              "height": "188",
              "mass": "84",
              "hair_color": "blond",
              "skin_color": "fair",
              "eye_color": "blue",
              "birth_year": "41.9BBY",
              "gender": "male",
              "homeworld": "http://swapi.dev/api/planets/1/",
              "films": [
                "http://swapi.dev/api/films/4/",
                "http://swapi.dev/api/films/5/",
                "http://swapi.dev/api/films/6/"
              ],
              "species": [],
              "vehicles": [
                "http://swapi.dev/api/vehicles/44/",
                "http://swapi.dev/api/vehicles/46/"
              ],
              "starships": [
                "http://swapi.dev/api/starships/39/",
                "http://swapi.dev/api/starships/59/",
                "http://swapi.dev/api/starships/65/"
              ],
              "created": "2014-12-10T16:20:44.310000Z",
              "edited": "2014-12-20T21:17:50.327000Z",
              "url": "http://swapi.dev/api/people/11/"
            }
        """
    }
}
