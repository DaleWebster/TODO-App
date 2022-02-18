//
//  ViewModelFactory.swift
//  TodoApp
//
//  Created by Dale Webster on 18/02/2022.
//

import Foundation

protocol ViewModelFactory {}

struct AppViewModelFactory: ViewModelFactory {
    private let serviceContainer: ServiceContainer
    
    init(serviceContainer: ServiceContainer) {
        self.serviceContainer = serviceContainer
    }
}
