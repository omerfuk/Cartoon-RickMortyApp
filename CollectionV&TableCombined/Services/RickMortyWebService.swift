//
//  WebService.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 18.07.2022.
//

import UIKit

func fetchCharacters(completed: @escaping ([Characters]?) -> ()){
    
    guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {return}
    
    URLSession.shared.dataTask(with: url) { data, response, error in
        
        guard let data = data, error == nil else {
            print(error!.localizedDescription)
            return
        }
        print(data)
        
        do{
            let characterList = try JSONDecoder().decode(RickMorty.self, from: data)
            DispatchQueue.main.async {
                completed(characterList.results)
                
            }
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
    .resume()
}
