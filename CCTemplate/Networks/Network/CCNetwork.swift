//
//  CCNetwork.swift
//  CCTemplate
//
//  Created by 박인수 on 5/16/24.
//

import Alamofire

enum CCError {
    
    enum CCNetworkError {
        
    }
    
    enum CCSystemError {
        
    }
    
    case networkError(with: CCNetworkError)
    case systemError(with: CCSystemError)
    
}

final class CCNetwork {
 
    
    
}

extension CCNetwork {
    
    func request<T: Codable>(_ request: T, completion: @escaping (T ,CCError.CCNetworkError) -> Void) {
        
    }
    
}

struct CCNetworkLogger {
    
    static func makeNetworkLog(parameters: [String: Any]?) {
        
    }
    
}
