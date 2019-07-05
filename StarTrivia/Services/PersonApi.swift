//
//  PersonApi.swift
//  StarTrivia
//
//  Created by maher on 6/27/19.
//  Copyright © 2019 maher.eisa. All rights reserved.


import Foundation
class PersonApi {
    func getRandomPersonUrlSession(id: Int ,completion: @escaping PersonResponseCompletion) {
        guard let url = URL(string: "\(PERSON_URL)\(id)") else {return}
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                debugPrint(error.debugDescription)
                completion(nil)
                return
            }
            
            guard let data = data else {return}
            do{
                 let jsonAny = try  JSONSerialization.jsonObject(with: data, options: [])
                guard let json = jsonAny as? [String: Any]  else{return}
                
               let person = self.parsePersonManuel(json: json)
                
                DispatchQueue.main.async {
                    completion(person)
                }
               
               
                
            }catch{
                debugPrint(error.localizedDescription)
                return
            }
           
        }
        task.resume()
    }
    
    private func parsePersonManuel(json: [String : Any]) -> Person{
        
        let name = json["name"] as? String ?? ""
        let height = json["height"] as? String ?? ""
        let mass = json["mass"] as? String ?? ""
        let hair = json["hair_color"] as? String ?? ""
        let birthYear =  json["birth_year"] as? String ?? ""
        let gender = json["gender"] as? String ?? ""
        let homeworldUrl = json["homeworld"] as? String ?? ""
        let filmUrls = json["films"] as? [String] ?? [String]()
        let vechileUrls = json["vechiles"] as? [String] ?? [String]()
        let starshipUrls = json["starships"] as? [String] ?? [String]()
        //initialize Person Struct
        return Person(name: name, height: height, mass: mass, hair: hair, birthYear: birthYear, gender:gender, homeWorldUrl: homeworldUrl, filmUrls: filmUrls, vechileUrls: vechileUrls, starShipUrls: starshipUrls )
  

     }
}
