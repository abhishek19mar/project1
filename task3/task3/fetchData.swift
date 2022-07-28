//
//  fetchData.swift
//  task3
//
//  Created by Abhishek Goel on 18/07/22.
//

import Foundation

class Fetch{

    func fetchData(_ completion  : @escaping (_ result :  CompaniesList?) -> (), json: String) {
   
       
            guard let path = Bundle.main.path(forResource: json, ofType: "json")
            else {return}
            let url = URL(fileURLWithPath: path)
            do{
                let data = try Data(contentsOf: url)
                let result = try JSONDecoder().decode(CompaniesList.self, from: data)
                completion(result)
            }
            catch{
        
                print("error")
                return
                
            }
    }
}


