//
//  Recipe.swift
//  Repaso Examen
//
//  Created by Mañanas on 23/9/24.
//

import Foundation

struct Recipes : Codable{
    let recipes: [Recipe]
}

struct Recipe: Codable{
    let id : Int
    let name: String
    let imageUrl:String
    
    enum CodingKeys:String,CodingKey{
        case id, name
        case imageUrl = "image"
    }
}
