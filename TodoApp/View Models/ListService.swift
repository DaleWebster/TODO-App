//
//  ListService.swift
//  TodoApp
//
//  Created by Sam Ali on 10/03/2022.
//

import Foundation

protocol ListServiceProtocol: AnyObject {
    func getItemsList() throws -> [ListItem?]
    func findItemWithItemID(for uniqueIdentifier: UUID) throws -> ListItem
    func getSpecificItemIndexInList(for uniqueIdentifier: UUID) throws -> Int
    func addItem(textInput: String) -> Void
    func updateListItemStatusToOpposite(for uniqueIdentifier: UUID) -> ListItem
    func updateListItemStatusToSpecificStatus(for uniqueIdentifier: UUID,with status: Bool) -> ListItem
    func deleteListItem(for uniqueIdentifier: UUID) -> Void
    
}
 
class ListService: ListServiceProtocol {
    
    private let repository: ListServiceRepository
    
    init(repository: ListServiceRepository) {
        self.repository = repository
    }
    
    func getItemsList() throws -> [ListItem?] {
        try repository.getItemsList()
    }
    
    func findItemWithItemID(for uniqueIdentifier: UUID) throws -> ListItem {
       try repository.findItemWithItemID(for: uniqueIdentifier)
    }
    
    func getSpecificItemIndexInList(for uniqueIdentifier: UUID) throws -> Int {
        try repository.getSpecificItemIndexInList(for: uniqueIdentifier)
    }
    
    func addItem(textInput: String) {
         repository.addItem(textInput: textInput)
    }
    
    func updateListItemStatusToOpposite(for uniqueIdentifier: UUID) -> ListItem {
         repository.updateListItemStatusToOpposite(for: uniqueIdentifier)
    }
    
    func updateListItemStatusToSpecificStatus(for uniqueIdentifier: UUID, with status: Bool) -> ListItem {
        repository.updateListItemStatusToSpecificStatus(for: uniqueIdentifier, with: status)
    }
    
    func deleteListItem(for uniqueIdentifier: UUID) {
        deleteListItem(for: uniqueIdentifier)
    }
    
}
