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
    
    init(viewControllerFactory: ViewControllerFactory) {
        self.viewControllerFactory = viewControllerFactory
    }
    
    func list() -> UIViewController {
        UIViewController()
    }
}
