//
//  ListViewController.swift
//  TodoApp
//
//  Created by Sam Ali on 09/03/2022.
//

import UIKit

class ListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
 
    
    var viewModel: ListViewModelProtocol!
    // this hard coded bit need to go to listviewmodel
   // var todoListArray: [String]
    
    var listTableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
        self.listTableView.register(UITableViewCell.self, forCellReuseIdentifier: viewModel.cellId)
    
        listTableView.frame = self.view.frame
        self.view.addSubview(listTableView)
    
        listTableView.delegate = self
        listTableView.dataSource = self

       
    
    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = listTableView.dequeueReusableCell(withIdentifier: viewModel.cellId, for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = viewModel.listArray[row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel.listArray.count
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        listTableView.deselectRow(at: indexPath, animated: true)
    
        let row = indexPath.row
        print(viewModel.listArray[row])
    }



}
