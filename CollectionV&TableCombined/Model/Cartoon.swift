//
//  Cartoon.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 18.07.2022.
//

import Foundation

struct Cartoon: Decodable {
    let title: String
    let year: Int
    let creator: [String]
    let rating: String
    let episodes: Int
    let image: String
}
