//
//  ViewControllerFactory.swift
//  TodoApp
//
//  Created by Dale Webster on 18/02/2022.
//

import Foundation

protocol ViewControllerFactory {}

struct AppViewControllerFactory: ViewControllerFactory {
    private let viewModelFactory: ViewModelFactory
    
    init(viewModelFactory: ViewModelFactory) {
        self.viewModelFactory = viewModelFactory
    }
}

