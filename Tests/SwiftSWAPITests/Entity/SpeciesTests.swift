//
//  SpeciesTests.swift
//  
//
//  Created by Евгений Кириллов on 08.09.2020.
//

import XCTest
@testable import SwiftSWAPI

final class SpeciesTests: XCTestCase {
    
    func testSpeciesDecoding() {
        let speciesInstance = try! decoder.decode(Species.self, from: speciesJSON)
        
        let validName = speciesInstance.name == "Wookie"
        let validClassification = speciesInstance.classification == "mammal"
        let validDesignation = speciesInstance.designation == "sentient"
        let validAverageHeight = speciesInstance.averageHeight == "210"
        let validAverageLifespan = speciesInstance.averageLifespan == "400"
        let validEyeColors = speciesInstance.eyeColors == "blue, green, yellow, brown, golden, red"
        let validHairColors = speciesInstance.hairColors == "black, brown"
        let validSkinColors = speciesInstance.skinColors == "gray"
        let validLanguage = speciesInstance.language == "Shyriiwook"
        let validHomeworld = speciesInstance.homeworld == "http://swapi.dev/api/planets/14/"
        let validPeople = speciesInstance.people == [
          "http://swapi.dev/api/people/13/",
          "http://swapi.dev/api/people/80/"
        ]
        let validFilms = speciesInstance.films == [
          "http://swapi.dev/api/films/1/",
          "http://swapi.dev/api/films/2/",
          "http://swapi.dev/api/films/3/",
          "http://swapi.dev/api/films/6/"
        ]
        let validUrl = speciesInstance.url == "http://swapi.dev/api/species/3/"
        let validCreated = speciesInstance.created == "2014-12-10T16:44:31.486000Z"
        let validEdited = speciesInstance.edited == "2014-12-20T21:36:42.142000Z"
        
        let allValid = validName
            && validClassification
            && validDesignation
            && validAverageHeight
            && validAverageLifespan
            && validEyeColors
            && validHairColors
            && validSkinColors
            && validLanguage
            && validHomeworld
            && validPeople
            && validFilms
            && validUrl
            && validCreated
            && validEdited
        
        XCTAssert(allValid, "Failed to decode JSON")
    }
    
    static var allTests = [
        ("testSpeciesDecoding", testSpeciesDecoding)
    ]
}

extension SpeciesTests {
    var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
    
    var speciesJSON: Data {
        """
            {
              "name": "Wookie",
              "classification": "mammal",
              "designation": "sentient",
              "average_height": "210",
              "skin_colors": "gray",
              "hair_colors": "black, brown",
              "eye_colors": "blue, green, yellow, brown, golden, red",
              "average_lifespan": "400",
              "homeworld": "http://swapi.dev/api/planets/14/",
              "language": "Shyriiwook",
              "people": [
                "http://swapi.dev/api/people/13/",
                "http://swapi.dev/api/people/80/"
              ],
              "films": [
                "http://swapi.dev/api/films/1/",
                "http://swapi.dev/api/films/2/",
                "http://swapi.dev/api/films/3/",
                "http://swapi.dev/api/films/6/"
              ],
              "created": "2014-12-10T16:44:31.486000Z",
              "edited": "2014-12-20T21:36:42.142000Z",
              "url": "http://swapi.dev/api/species/3/"
            }
        """.data(using: .utf8)!
    }
}

