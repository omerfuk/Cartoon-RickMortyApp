//
//  RickMorty.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 18.07.2022.
//

import Foundation

struct RickMorty: Codable {
    
    let results: [Characters]
}

struct Characters: Codable {
    
    var id: Int
    var name:String
    var image: String
}
