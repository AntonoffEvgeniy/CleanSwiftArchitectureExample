//
//  Cocktail.swift
//  CleanSwiftArchitectureExample
//
//  Created by Evgeniy Antonov on 7/27/18.
//  Copyright © 2018 Evgeniy Antonov. All rights reserved.
//

import ObjectMapper

struct Cocktail: Mappable {
    var title: String!
    var thumb: String!
    var instructions: String!
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        title <- map["strDrink"]
        thumb <- map["strDrinkThumb"]
        instructions <- map["strInstructions"]
    }
}
