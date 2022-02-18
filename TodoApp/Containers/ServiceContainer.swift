//
//  ServiceContainer.swift
//  TodoApp
//
//  Created by Dale Webster on 18/02/2022.
//

import Foundation

protocol ServiceContainer {}

struct AppServiceContainer: ServiceContainer {
    private let dataAccessContainer: DataAccessContainer
    
    init(dataAccessContainer: DataAccessContainer) {
        self.dataAccessContainer = dataAccessContainer
    }
}
