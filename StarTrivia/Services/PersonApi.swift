//
//  PersonApi.swift
//  StarTrivia
//
//  Created by maher on 6/27/19.
//  Copyright © 2019 maher.eisa. All rights reserved.


import Foundation
class PersonApi {
    func getRandomPersonUrlSession(){
        guard let url = URL(string: PERSON_URL) else {return}
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                debugPrint(error.debugDescription)
                return
            }
            
            guard let data = data else {return}
            do{
                 let jsonAny = try  JSONSerialization.jsonObject(with: data, options: [])
                guard let json = jsonAny as? [String: Any]  else{return}
                print(json)
                
            }catch{
                debugPrint(error.localizedDescription)
            }
           
            
            
            print("Data\(data)")
            print("Response\(response)")
        }
        task.resume()
    }
}
