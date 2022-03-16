//
//  ListViewModelProtocol.swift
//  TodoApp
//
//  Created by Sam Ali on 10/03/2022.
//

import Foundation
import UIKit



protocol ListViewModelCoordinatorDelegate: AnyObject {
    func showPlayQueue(viewModel: ListViewModelProtocol)
}

protocol ListViewModelProtocol: AnyObject {
    
    var delegate: ListViewModelDelegate? { get set }
    var coordinatorDelegate: ListViewModelCoordinatorDelegate? { get set }
    var listArray: [String] {get set}
    var cellId : String {get set}
    func viewDidAppear()
    func viewDidDisappear()
    
}
 
protocol ListViewModelDelegate: AnyObject {
    func bind(viewModel: ListViewModelProtocol)
}

class ListViewModel: ListViewModelProtocol {
    
    // MARK: ListViewModelProtocol properties
    weak var delegate: ListViewModelDelegate?
    weak var coordinatorDelegate: ListViewModelCoordinatorDelegate?
    var listArray = ["Go shopping", "Eat some carrots", "Argue with dogs", "Make parents proud", "Build this awesome app", "Live forever"]
    var cellId = "ListCell"

    func viewDidAppear() {
     
    }
    
    func viewDidDisappear() {

    }

 
}

