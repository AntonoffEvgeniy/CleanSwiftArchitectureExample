//
//  APIManager.swift
//  CleanSwiftArchitectureExample
//
//  Created by Evgeniy Antonov on 7/26/18.
//  Copyright © 2018 Evgeniy Antonov. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

typealias successResponse = (_ data: Cocktail) -> ()
typealias failureResponse = (_ error: Error) -> ()

class APIManager: NSObject {
    func getRandomCocktail(with success: @escaping successResponse, failure: @escaping failureResponse) {
        
        Alamofire.request("https://www.thecocktaildb.com/api/json/v1/1/random.php").responseJSON { response in
            debugPrint(response)
            
            if let json = response.result.value as? [String: Any],
                let drinks = json["drinks"] as? [Any],
                let drink = drinks.first,
                let cocktail = Mapper<Cocktail>().map(JSONObject: drink) {
                success(cocktail);
            }
            if let error = response.error {
                failure(error);
            }
        }
    }
}

class ApiError: Error {
    var message: String!
    
    init() {
        message = "Fething error"
    }
}
