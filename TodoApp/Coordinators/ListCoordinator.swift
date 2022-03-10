//
//  ListCoordinator.swift
//  TodoApp
//
//  Created by Sam Ali on 09/03/2022.
//

import UIKit


class ListCoordinator: UIViewController {
    
    private let viewControllerFactory: ViewControllerFactory
    private let listViewController: ListViewController

    
    init(viewControllerFactory: ViewControllerFactory, listViewController: ListViewController) {
        self.viewControllerFactory = viewControllerFactory
        self.listViewController = listViewController
        super.init(nibName: nil, bundle: nil)
      //  listViewController.viewModel.coordinatorDelegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
   embedChildViewController(listViewController, in: view)
        
    }
    
    

}




