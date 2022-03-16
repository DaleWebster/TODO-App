//
//  ListCoordinator.swift
//  TodoApp
//
//  Created by Sam Ali on 09/03/2022.
//

import UIKit


class ListCoordinator: UIViewController {
    
  
    private let listViewController: ListViewController
    
    init(viewControllerFactory: ViewControllerFactory) {
        
        self.listViewController = viewControllerFactory.createListViewController()
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

//extension ListCoordinator: ListViewModelCoordinatorDelegate
//func showPlayQueue(viewModel: ListViewModelProtocol) {
//    let vc = viewControllerFactory. .playQueue(coordinatorDelegate: self, statContext: statContext)
//    vc.presentationController?.delegate = self
//
//
//    present(vc, animated: true, completion: nil)
//
//}


