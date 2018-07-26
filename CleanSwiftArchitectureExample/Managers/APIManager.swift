//
//  APIManager.swift
//  CleanSwiftArchitectureExample
//
//  Created by Evgeniy Antonov on 7/26/18.
//  Copyright © 2018 Evgeniy Antonov. All rights reserved.
//

import UIKit

typealias successResponse = (_ data: [String]) -> ()
typealias failureResponse = (_ error: ApiError) -> ()

class APIManager: NSObject {
    func fetchCoctails(with searchPhrase: String, success: successResponse, failure: failureResponse) {
        // TODO: Add request
        
        success(["Coctail1", "Coctail2"]);
//        failure(ApiError());
    }
}

class ApiError: Error {
    var message: String!
    
    init() {
        message = "Fething error"
    }
}
