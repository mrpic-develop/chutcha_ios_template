//
//  MainViewResponse.swift
//  CCTemplate
//
//  Created by 박인수 on 5/16/24.
//

import Foundation

struct MainViewResponse: Codable {
    
    enum CodingKeys: String, CodingKey {
        case mainModel
    }
    
    var mainModel: MainModel
    
}

struct MainModel: Codable {
    
    
}
