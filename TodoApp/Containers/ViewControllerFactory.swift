//
//  ViewControllerFactory.swift
//  TodoApp
//
//  Created by Dale Webster on 18/02/2022.
//

import Foundation

protocol ViewControllerFactory {
    func createListViewController() -> ListViewController
}

struct AppViewControllerFactory: ViewControllerFactory {
    
    private let viewModelFactory: ViewModelFactory
    
    init(viewModelFactory: ViewModelFactory) {
        self.viewModelFactory = viewModelFactory
    
    }
    
    func createListViewController() -> ListViewController {
        let listViewController = ListViewController()
        listViewController.viewModel = viewModelFactory.listViewModel()
        
        return listViewController
    }
}

