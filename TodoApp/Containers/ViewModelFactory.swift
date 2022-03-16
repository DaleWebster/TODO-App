//
//  ViewModelFactory.swift
//  TodoApp
//
//  Created by Dale Webster on 18/02/2022.
//

import Foundation

protocol ViewModelFactory {
    func listViewModel() -> ListViewModelProtocol
}

struct AppViewModelFactory: ViewModelFactory {
    private let serviceContainer: ServiceContainer
    
    init(serviceContainer: ServiceContainer) {
        self.serviceContainer = serviceContainer
    }
    
    func listViewModel() -> ListViewModelProtocol {
        let listViewModel = ListViewModel()
        
        return listViewModel
    }
}
