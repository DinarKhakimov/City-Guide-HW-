//
//  Model.swift
//  City Guide (HW)
//
//  Created by Johnny Boshechka on 1/4/22.
//

import Foundation

struct City {
    var name: String
    var image: String
    var population: Float
    var area: Float
    var foundedDate: Int
    
    var sights: [String]
    
    static func getCity() -> City {
        City(name: "Ufa",
             image: "6",
             population: 1200000,
             area: 342.33,
             foundedDate: 1500,
             sights: ["Salavat Ulaev square", "Sõpruse monument", "Gostinyy Dvor", "Art Kvadrat", "Park Imeni Ivana Yakutova"])
        }
}

