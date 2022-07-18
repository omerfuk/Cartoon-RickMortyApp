//
//  CartoonWebService.swift
//  CollectionV&TableCombined
//
//  Created by Ömer Faruk Kılıçaslan on 18.07.2022.
//

import Foundation


func fetchCartoons(completed: @escaping ([Cartoon]?) -> ()){
    
    guard let url = URL(string: "https://api.sampleapis.com/cartoons/cartoons2D") else {return}
    
    URLSession.shared.dataTask(with: url) { data, response, error in
        
        guard let data = data, error == nil else {
            print(error!.localizedDescription)
            return
        }
        print(data)
        
        do{
            let cartoonList = try JSONDecoder().decode([Cartoon].self, from: data)
            DispatchQueue.main.async {
                completed(cartoonList)
                
            }
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
    .resume()
}
