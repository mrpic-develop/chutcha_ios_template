//
//  MainViewModel.swift
//  CCTemplate
//
//  Created by 박인수 on 5/16/24.
//

import Foundation

protocol MainViewModelProtocol {
    // INPUT & OUTPUT 정의
    // func didViewLoad()...
    // ...
    // var mainModel: MainModel? { get set }.
}

final class MainViewModel: MainViewModelProtocol {
    
    // 데이터 통신이 없는 페이지의 경우 Repository는 Optional이 될 수 있다.
    private let repository: MainRepositoryDataProtocol
    
    var mainModel: MainModel?
    
    init(repository: MainRepositoryDataProtocol) {
        self.repository = repository
    }
    
}

// 데이터 통신 및 INPUT을 처리하는 구체적인 구현부를 extension을 통해 작성
extension MainViewModel {
    
}
