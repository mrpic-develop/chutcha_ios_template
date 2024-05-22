//
//  DataTransferService.swift
//  CCTemplate
//
//  Created by 박인수 on 5/16/24.
//

import Foundation

protocol DataTransferServiceProtocol {
    func request<T: Codable>(target: T, completion: @escaping () -> Void)
}

final class DataTransferService: DataTransferServiceProtocol {
    
    var ccNetwork: CCNetwork
    
    init(ccNetwork: CCNetwork) {
        self.ccNetwork = ccNetwork
    }
    
}

extension DataTransferService {
    
    func request<T>(
        target: T, 
        completion: @escaping () -> Void
    ) where T : Decodable, T : Encodable {
//        ccNetwork.request(target, completion: completion)
    }
    
}
