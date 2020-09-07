//
//  FilmTests.swift
//  
//
//  Created by Евгений Кириллов on 07.09.2020.
//

import XCTest
@testable import SwiftSWAPI

final class FilmTests: XCTestCase {
    func testFilmDecoding() {
        let filmInstance = try! decoder.decode(Film.self, from: filmJSON)
        
        let titleValid = filmInstance.title == "Revenge of the Sith"
        let episodeIdValid = filmInstance.episodeId == 3
        let openingValid = filmInstance.openingCrawl == "War! The Republic is crumbling\r\nunder attacks by the ruthless\r\nSith Lord, Count Dooku.\r\nThere are heroes on both sides.\r\nEvil is everywhere.\r\n\r\nIn a stunning move, the\r\nfiendish droid leader, General\r\nGrievous, has swept into the\r\nRepublic capital and kidnapped\r\nChancellor Palpatine, leader of\r\nthe Galactic Senate.\r\n\r\nAs the Separatist Droid Army\r\nattempts to flee the besieged\r\ncapital with their valuable\r\nhostage, two Jedi Knights lead a\r\ndesperate mission to rescue the\r\ncaptive Chancellor...."
        let directorValid = filmInstance.director == "George Lucas"
        let producerValid = filmInstance.producer == "Rick McCallum"
        let releaseDateValid = filmInstance.releaseDate == "2005-05-19"
        let charactersValid = filmInstance.characters == [
          "http://swapi.dev/api/people/1/",
          "http://swapi.dev/api/people/2/",
          "http://swapi.dev/api/people/3/",
          "http://swapi.dev/api/people/4/",
          "http://swapi.dev/api/people/5/",
          "http://swapi.dev/api/people/6/",
          "http://swapi.dev/api/people/7/",
          "http://swapi.dev/api/people/10/",
          "http://swapi.dev/api/people/11/",
          "http://swapi.dev/api/people/12/",
          "http://swapi.dev/api/people/13/",
          "http://swapi.dev/api/people/20/",
          "http://swapi.dev/api/people/21/",
          "http://swapi.dev/api/people/33/",
          "http://swapi.dev/api/people/35/",
          "http://swapi.dev/api/people/46/",
          "http://swapi.dev/api/people/51/",
          "http://swapi.dev/api/people/52/",
          "http://swapi.dev/api/people/53/",
          "http://swapi.dev/api/people/54/",
          "http://swapi.dev/api/people/55/",
          "http://swapi.dev/api/people/56/",
          "http://swapi.dev/api/people/58/",
          "http://swapi.dev/api/people/63/",
          "http://swapi.dev/api/people/64/",
          "http://swapi.dev/api/people/67/",
          "http://swapi.dev/api/people/68/",
          "http://swapi.dev/api/people/75/",
          "http://swapi.dev/api/people/78/",
          "http://swapi.dev/api/people/79/",
          "http://swapi.dev/api/people/80/",
          "http://swapi.dev/api/people/81/",
          "http://swapi.dev/api/people/82/",
          "http://swapi.dev/api/people/83/"
        ]
        let planetsValid = filmInstance.planets == [
          "http://swapi.dev/api/planets/1/",
          "http://swapi.dev/api/planets/2/",
          "http://swapi.dev/api/planets/5/",
          "http://swapi.dev/api/planets/8/",
          "http://swapi.dev/api/planets/9/",
          "http://swapi.dev/api/planets/12/",
          "http://swapi.dev/api/planets/13/",
          "http://swapi.dev/api/planets/14/",
          "http://swapi.dev/api/planets/15/",
          "http://swapi.dev/api/planets/16/",
          "http://swapi.dev/api/planets/17/",
          "http://swapi.dev/api/planets/18/",
          "http://swapi.dev/api/planets/19/"
        ]
        let starshipsValid = filmInstance.starships == [
          "http://swapi.dev/api/starships/2/",
          "http://swapi.dev/api/starships/32/",
          "http://swapi.dev/api/starships/48/",
          "http://swapi.dev/api/starships/59/",
          "http://swapi.dev/api/starships/61/",
          "http://swapi.dev/api/starships/63/",
          "http://swapi.dev/api/starships/64/",
          "http://swapi.dev/api/starships/65/",
          "http://swapi.dev/api/starships/66/",
          "http://swapi.dev/api/starships/68/",
          "http://swapi.dev/api/starships/74/",
          "http://swapi.dev/api/starships/75/"
        ]
        let vehiclesValid = filmInstance.vehicles == [
          "http://swapi.dev/api/vehicles/33/",
          "http://swapi.dev/api/vehicles/50/",
          "http://swapi.dev/api/vehicles/53/",
          "http://swapi.dev/api/vehicles/56/",
          "http://swapi.dev/api/vehicles/60/",
          "http://swapi.dev/api/vehicles/62/",
          "http://swapi.dev/api/vehicles/67/",
          "http://swapi.dev/api/vehicles/69/",
          "http://swapi.dev/api/vehicles/70/",
          "http://swapi.dev/api/vehicles/71/",
          "http://swapi.dev/api/vehicles/72/",
          "http://swapi.dev/api/vehicles/73/",
          "http://swapi.dev/api/vehicles/76/"
        ]
        let speciesValid = filmInstance.species == [
          "http://swapi.dev/api/species/1/",
          "http://swapi.dev/api/species/2/",
          "http://swapi.dev/api/species/3/",
          "http://swapi.dev/api/species/6/",
          "http://swapi.dev/api/species/15/",
          "http://swapi.dev/api/species/19/",
          "http://swapi.dev/api/species/20/",
          "http://swapi.dev/api/species/23/",
          "http://swapi.dev/api/species/24/",
          "http://swapi.dev/api/species/25/",
          "http://swapi.dev/api/species/26/",
          "http://swapi.dev/api/species/27/",
          "http://swapi.dev/api/species/28/",
          "http://swapi.dev/api/species/29/",
          "http://swapi.dev/api/species/30/",
          "http://swapi.dev/api/species/33/",
          "http://swapi.dev/api/species/34/",
          "http://swapi.dev/api/species/35/",
          "http://swapi.dev/api/species/36/",
          "http://swapi.dev/api/species/37/"
        ]
        let createdValid = filmInstance.created == "2014-12-20T18:49:38.403000Z"
        let editedValid = filmInstance.edited == "2014-12-20T20:47:52.073000Z"
        let urlValid = filmInstance.url == "http://swapi.dev/api/films/6/"
        
        let allValid = titleValid
            && episodeIdValid
            && openingValid
            && directorValid
            && producerValid
            && releaseDateValid
            && charactersValid
            && planetsValid
            && starshipsValid
            && vehiclesValid
            && speciesValid
            && createdValid
            && editedValid
            && urlValid
        
        XCTAssert(allValid, "Failed to decode JSON")
    }
    
    static var allTests = [
        ("testFilmDecoding", testFilmDecoding)
    ]
}

extension FilmTests {
    var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
    
    var filmJSON: Data {
        #"""
            {
              "title": "Revenge of the Sith",
              "episode_id": 3,
              "opening_crawl": "War! The Republic is crumbling\r\nunder attacks by the ruthless\r\nSith Lord, Count Dooku.\r\nThere are heroes on both sides.\r\nEvil is everywhere.\r\n\r\nIn a stunning move, the\r\nfiendish droid leader, General\r\nGrievous, has swept into the\r\nRepublic capital and kidnapped\r\nChancellor Palpatine, leader of\r\nthe Galactic Senate.\r\n\r\nAs the Separatist Droid Army\r\nattempts to flee the besieged\r\ncapital with their valuable\r\nhostage, two Jedi Knights lead a\r\ndesperate mission to rescue the\r\ncaptive Chancellor....",
              "director": "George Lucas",
              "producer": "Rick McCallum",
              "release_date": "2005-05-19",
              "characters": [
                "http://swapi.dev/api/people/1/",
                "http://swapi.dev/api/people/2/",
                "http://swapi.dev/api/people/3/",
                "http://swapi.dev/api/people/4/",
                "http://swapi.dev/api/people/5/",
                "http://swapi.dev/api/people/6/",
                "http://swapi.dev/api/people/7/",
                "http://swapi.dev/api/people/10/",
                "http://swapi.dev/api/people/11/",
                "http://swapi.dev/api/people/12/",
                "http://swapi.dev/api/people/13/",
                "http://swapi.dev/api/people/20/",
                "http://swapi.dev/api/people/21/",
                "http://swapi.dev/api/people/33/",
                "http://swapi.dev/api/people/35/",
                "http://swapi.dev/api/people/46/",
                "http://swapi.dev/api/people/51/",
                "http://swapi.dev/api/people/52/",
                "http://swapi.dev/api/people/53/",
                "http://swapi.dev/api/people/54/",
                "http://swapi.dev/api/people/55/",
                "http://swapi.dev/api/people/56/",
                "http://swapi.dev/api/people/58/",
                "http://swapi.dev/api/people/63/",
                "http://swapi.dev/api/people/64/",
                "http://swapi.dev/api/people/67/",
                "http://swapi.dev/api/people/68/",
                "http://swapi.dev/api/people/75/",
                "http://swapi.dev/api/people/78/",
                "http://swapi.dev/api/people/79/",
                "http://swapi.dev/api/people/80/",
                "http://swapi.dev/api/people/81/",
                "http://swapi.dev/api/people/82/",
                "http://swapi.dev/api/people/83/"
              ],
              "planets": [
                "http://swapi.dev/api/planets/1/",
                "http://swapi.dev/api/planets/2/",
                "http://swapi.dev/api/planets/5/",
                "http://swapi.dev/api/planets/8/",
                "http://swapi.dev/api/planets/9/",
                "http://swapi.dev/api/planets/12/",
                "http://swapi.dev/api/planets/13/",
                "http://swapi.dev/api/planets/14/",
                "http://swapi.dev/api/planets/15/",
                "http://swapi.dev/api/planets/16/",
                "http://swapi.dev/api/planets/17/",
                "http://swapi.dev/api/planets/18/",
                "http://swapi.dev/api/planets/19/"
              ],
              "starships": [
                "http://swapi.dev/api/starships/2/",
                "http://swapi.dev/api/starships/32/",
                "http://swapi.dev/api/starships/48/",
                "http://swapi.dev/api/starships/59/",
                "http://swapi.dev/api/starships/61/",
                "http://swapi.dev/api/starships/63/",
                "http://swapi.dev/api/starships/64/",
                "http://swapi.dev/api/starships/65/",
                "http://swapi.dev/api/starships/66/",
                "http://swapi.dev/api/starships/68/",
                "http://swapi.dev/api/starships/74/",
                "http://swapi.dev/api/starships/75/"
              ],
              "vehicles": [
                "http://swapi.dev/api/vehicles/33/",
                "http://swapi.dev/api/vehicles/50/",
                "http://swapi.dev/api/vehicles/53/",
                "http://swapi.dev/api/vehicles/56/",
                "http://swapi.dev/api/vehicles/60/",
                "http://swapi.dev/api/vehicles/62/",
                "http://swapi.dev/api/vehicles/67/",
                "http://swapi.dev/api/vehicles/69/",
                "http://swapi.dev/api/vehicles/70/",
                "http://swapi.dev/api/vehicles/71/",
                "http://swapi.dev/api/vehicles/72/",
                "http://swapi.dev/api/vehicles/73/",
                "http://swapi.dev/api/vehicles/76/"
              ],
              "species": [
                "http://swapi.dev/api/species/1/",
                "http://swapi.dev/api/species/2/",
                "http://swapi.dev/api/species/3/",
                "http://swapi.dev/api/species/6/",
                "http://swapi.dev/api/species/15/",
                "http://swapi.dev/api/species/19/",
                "http://swapi.dev/api/species/20/",
                "http://swapi.dev/api/species/23/",
                "http://swapi.dev/api/species/24/",
                "http://swapi.dev/api/species/25/",
                "http://swapi.dev/api/species/26/",
                "http://swapi.dev/api/species/27/",
                "http://swapi.dev/api/species/28/",
                "http://swapi.dev/api/species/29/",
                "http://swapi.dev/api/species/30/",
                "http://swapi.dev/api/species/33/",
                "http://swapi.dev/api/species/34/",
                "http://swapi.dev/api/species/35/",
                "http://swapi.dev/api/species/36/",
                "http://swapi.dev/api/species/37/"
              ],
              "created": "2014-12-20T18:49:38.403000Z",
              "edited": "2014-12-20T20:47:52.073000Z",
              "url": "http://swapi.dev/api/films/6/"
            }
        """#.data(using: .utf8)!
    }
}
