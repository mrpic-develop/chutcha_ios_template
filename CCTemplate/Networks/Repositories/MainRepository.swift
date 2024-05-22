//
//  MainRepository.swift
//  CCTemplate
//
//  Created by 박인수 on 5/16/24.
//

import Foundation

// MARK: - Protocol Part

protocol Repositable {
    var service: DataTransferServiceProtocol { get set }
}

protocol MainRepositoryDataProtocol {
    
}

// MARK: - Class Part

final class MainRepository: Repositable {
    
    internal var service: DataTransferServiceProtocol
    
    init(service: DataTransferServiceProtocol) {
        self.service = service
    }
    
}

// MARK: - Implementation Part

extension MainRepository: MainRepositoryDataProtocol {
    
    
}
