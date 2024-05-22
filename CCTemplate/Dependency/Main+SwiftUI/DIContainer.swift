//
//  Main+DIContainer.swift
//  CCTemplate
//
//  Created by 박인수 on 5/16/24.
//

import Foundation
import SwiftUI
import Swinject

/*
    Swinject 라이브러리 도입
    - inject() 를 실행하여 네트워크 단부터 레포지토리, 뷰모델, 뷰컨을 모두 등록하면 DIContainer.shared 로 접근해 원하는 곳에서 쉽게 사용할 수 있는 장점
    - 만약 DIContainer를 사용하고 싶지 않으면 단순 인스턴스를 가져오는 부분만 다시 원래대로 바꿔주면 되기 때문에 라이브러리 의존성이 높지 않다는 결론
    - 코드량이 이전처럼 많아지는 것과 라이브러리 의존적인 단점이 있지만, 잘 찢어주면 관리하기 괜찮을지도..??
 */

final class DIContainer {
    
    static let shared = DIContainer()
    
    let container = Container()
    
    init() {
        self.inject()
    }
 
    private func inject() {
        registerDataTransferService()
        registerMainRepositories()
        registerMainViewModel()
        registerMainVC()
    }
    
}

// MARK: - Data & Repositories

extension DIContainer {
    
    private func registerDataTransferService() {
        container.register(DataTransferServiceProtocol.self) { _ in
            DataTransferService(ccNetwork: CCNetwork())
        }
    }
    
}

