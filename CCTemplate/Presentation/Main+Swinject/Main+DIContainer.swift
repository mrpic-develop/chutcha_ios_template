//
//  Main+DIContainer.swift
//  CCTemplate
//
//  Created by 박인수 on 5/21/24.
//

import Foundation
import Swinject

// MARK: - ViewModels (Main)

extension DIContainer {
    
    func registerMainRepositories() {
        container.register(MainRepositoryDataProtocol.self) { resolver in
            MainRepository(
                service: resolver.resolve(DataTransferServiceProtocol.self)!
            )
        }
    }
    
}


extension DIContainer {
    
    func registerMainViewModel() {
        container.register(MainViewModelSwiftUI.self) { resolver in
            MainViewModelSwiftUI(
                repository: resolver.resolve(MainRepositoryDataProtocol.self)!
            )
        }
        
        container.register(MainViewModel.self) { resolver in
            MainViewModel(
                repository: resolver.resolve(MainRepositoryDataProtocol.self)!
            )
        }
    }
    
}

// MARK: - VC (Main)

extension DIContainer {
    
    func registerMainVC() {
        container.register(MainView.self) { resolver in
            MainView(
                viewModel: resolver.resolve(MainViewModelSwiftUI.self)!
            )
        }
        
        container.register(MainViewController.self) { resolver in
            MainViewController(
                viewModel: resolver.resolve(MainViewModel.self)!
            )
        }

    }
    
}
