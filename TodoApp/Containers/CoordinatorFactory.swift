//
//  CoordinatorFactory.swift
//  TodoApp
//
//  Created by Dale Webster on 18/02/2022.
//

import Foundation
import UIKit

protocol CoordinatorFactory {
    func list() -> UIViewController
}

struct AppCoordinatorFactory: CoordinatorFactory {
    private let viewControllerFactory: ViewControllerFactory
    private let listViewController: ListViewController
    
    init(viewControllerFactory: ViewControllerFactory, listViewController: ListViewController) {
        self.viewControllerFactory = viewControllerFactory
        self.listViewController = listViewController
    }
    
    func list() -> UIViewController {
        let listViewController = ListCoordinator(viewControllerFactory: viewControllerFactory, listViewController: listViewController)
        return listViewController
    }
}
