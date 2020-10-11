//
//  RestSErvice.swift
//  technical-assessment-ios
//
//  Created by yannhuissoud on 10/4/20.
//  Copyright © 2020 yannhuissoud. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct ApiUrls {
    static let base = "https://technical-assessment-api.herokuapp.com"
    static let articles = "\(base)/articles"
}

// TODO: Should be moved to a mockable api class
func getArticles(onError: @escaping () -> Void, completion: @escaping (Articles?) -> Void){
    Alamofire.request(
        ApiUrls.articles,
        headers : [ "Authorization" : "Bearer AiCwsO25HwN6XOZkLaR3bE4JggkmFsCF" ]
        ).responseJSON { response in
            if (response.result.isSuccess){
                let articles = try? JSONDecoder().decode(Articles.self, from: response.data!)
                completion(articles)
            } else {
                print("###Error: \(response.error.debugDescription)")
                onError()
            }
    }
}
