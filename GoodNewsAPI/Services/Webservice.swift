//
//  Webservice.swift
//  GoodNewsAPI
//
//  Created by Kerim Civelek on 2.10.2022.
//

import Foundation



class Webservice{
    
    func getArticles(url: URL, completion: @escaping([Any]?)-> ()){
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                print(data)
            }
        }.resume()
    }
}
