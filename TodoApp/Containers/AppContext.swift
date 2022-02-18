//
//  AppContext.swift
//  TodoApp
//
//  Created by Dale Webster on 18/02/2022.
//

import Foundation

struct AppContext {
    let coordinatorFactory: CoordinatorFactory
    
    init() {
        let dataAccessContainer = AppDataAccessContainer()
        let serviceContainer = AppServiceContainer(dataAccessContainer: dataAccessContainer)
        let viewModelFactory = AppViewModelFactory(serviceContainer: serviceContainer)
        let viewControllerFactory = AppViewControllerFactory(viewModelFactory: viewModelFactory)
        
        coordinatorFactory = AppCoordinatorFactory(viewControllerFactory: viewControllerFactory)
    }
}
