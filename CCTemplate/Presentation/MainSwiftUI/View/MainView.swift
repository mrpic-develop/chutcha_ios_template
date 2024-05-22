//
//  MainView.swift
//  CCTemplate
//
//  Created by 박인수 on 5/16/24.
//

import SwiftUI

struct MainView: View {
    
    // @StateObject는 해당 뷰가 Initialize 될 때마다 단 한번의 초기화를 보장한다.
    @StateObject var viewModel: MainViewModelSwiftUI
    
    // Cannot assign to property: 'viewModel' is a get-only property 에러로 Init 사용 불가
    init(viewModel: MainViewModelSwiftUI) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
}

#Preview {
    MainView(
        viewModel: DIContainer.shared.container.resolve(MainViewModelSwiftUI.self)!
    )
}


