//
//  MainViewModel.swift
//  CCTemplate
//
//  Created by 박인수 on 5/16/24.
//

import SwiftUI

/*
    SwiftUI에서는 Coordinator가 필요 없게 된다. SwiftUI View에서 Router를 추출해내는 것이 어려움.
    따라서 Action을 통해 따로 뷰의 액션을 정의할 필요성도 없어지게 된다.
 */

// ViewModel은 ObservableObject로 관리되어 뷰 모델을 감시하도록 변경한다.
final class MainViewModelSwiftUI: ObservableObject {
    
    // Repository는 SwiftUI와 별개의 layer이기 때문에 유지
    private let repository: MainRepositoryDataProtocol
    
    // MainModel에 변경점이 발생하면 해당 변화를 전파하기 위해 @Published를 선언
    @Published var mainModel: MainModel?
    
    // MARK: - Init
    
    init(repository: MainRepositoryDataProtocol) {
        self.repository = repository
    }
    
}

extension MainViewModelSwiftUI {
    
    
    
}
