//
//  PlanetTests.swift
//  
//
//  Created by Евгений Кириллов on 08.09.2020.
//

import XCTest
@testable import SwiftSWAPI

final class PlanetTests: XCTestCase {
    
    func testPlanetDecoding() {
        let planetInstance = try! decoder.decode(Planet.self, from: planetJSON)
        
        let validName = planetInstance.name == "Tatooine"
        let validDiameter = planetInstance.diameter == "10465"
        let validRotationPeriod = planetInstance.rotationPeriod == "23"
        let validOrbitalPeriod = planetInstance.orbitalPeriod == "304"
        let validGravity = planetInstance.gravity == "1 standard"
        let validPopulation = planetInstance.population == "200000"
        let validClimate = planetInstance.climate == "arid"
        let validTerrain = planetInstance.terrain == "desert"
        let validSurfaceWater = planetInstance.surfaceWater == "1"
        let validResidents = planetInstance.residents == [
          "http://swapi.dev/api/people/1/",
          "http://swapi.dev/api/people/2/",
          "http://swapi.dev/api/people/4/",
          "http://swapi.dev/api/people/6/",
          "http://swapi.dev/api/people/7/",
          "http://swapi.dev/api/people/8/",
          "http://swapi.dev/api/people/9/",
          "http://swapi.dev/api/people/11/",
          "http://swapi.dev/api/people/43/",
          "http://swapi.dev/api/people/62/"
        ]
        let validFilms = planetInstance.films == [
          "http://swapi.dev/api/films/1/",
          "http://swapi.dev/api/films/3/",
          "http://swapi.dev/api/films/4/",
          "http://swapi.dev/api/films/5/",
          "http://swapi.dev/api/films/6/"
        ]
        let validUrl = planetInstance.url == "http://swapi.dev/api/planets/1/"
        let validCreated = planetInstance.created == "2014-12-09T13:50:49.641000Z"
        let validEdited = planetInstance.edited == "2014-12-20T20:58:18.411000Z"
        
        let allValid = validName
            && validDiameter
            && validRotationPeriod
            && validOrbitalPeriod
            && validGravity
            && validPopulation
            && validClimate
            && validTerrain
            && validSurfaceWater
            && validResidents
            && validFilms
            && validUrl
            && validCreated
            && validEdited
        
        XCTAssert(allValid, "Failed to decode JSON")
    }
    
    static var allTests = [
        ("testPlanetDecoding", testPlanetDecoding)
    ]
}

extension PlanetTests {
    var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
    
    var planetJSON: Data {
        """
            {
              "name": "Tatooine",
              "rotation_period": "23",
              "orbital_period": "304",
              "diameter": "10465",
              "climate": "arid",
              "gravity": "1 standard",
              "terrain": "desert",
              "surface_water": "1",
              "population": "200000",
              "residents": [
                "http://swapi.dev/api/people/1/",
                "http://swapi.dev/api/people/2/",
                "http://swapi.dev/api/people/4/",
                "http://swapi.dev/api/people/6/",
                "http://swapi.dev/api/people/7/",
                "http://swapi.dev/api/people/8/",
                "http://swapi.dev/api/people/9/",
                "http://swapi.dev/api/people/11/",
                "http://swapi.dev/api/people/43/",
                "http://swapi.dev/api/people/62/"
              ],
              "films": [
                "http://swapi.dev/api/films/1/",
                "http://swapi.dev/api/films/3/",
                "http://swapi.dev/api/films/4/",
                "http://swapi.dev/api/films/5/",
                "http://swapi.dev/api/films/6/"
              ],
              "created": "2014-12-09T13:50:49.641000Z",
              "edited": "2014-12-20T20:58:18.411000Z",
              "url": "http://swapi.dev/api/planets/1/"
            }
        """.data(using: .utf8)!
    }
}

