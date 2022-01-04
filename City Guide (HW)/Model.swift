//
//  Model.swift
//  City Guide (HW)
//
//  Created by Johnny Boshechka on 1/4/22.
//

import Foundation

struct City {
    let name: String
    let image: String
    let difinition: String
    
    var sights : [Sight] = []
    

}

struct Sight {
    
    static let dataManager = DataManager.shared
    let name: String 
    let address: String
    let image: String
    let description: String
    
    static func getSights() -> [Sight] {
        
        var sights: [Sight] = []
        
        for index in 0..<dataManager.names.count {
            sights.append(Sight(name: dataManager.names[index], address: dataManager.adress[index], image: dataManager.image[index], description: dataManager.description[index]))
        }
        return sights

    }
}
