//
//  ListRepository.swift
//  TodoApp
//
//  Created by Sam Ali on 10/03/2022.
//

import Foundation
enum ListError: Error {
    case noList
    case itemNonexistant
}

 protocol ListServiceRepositoryProtocol {
    func getItemsList() throws -> [ListItem?]
    func findItemWithItemID(for uniqueIdentifier: UUID) throws -> ListItem
    func getSpecificItemIndexInList(for uniqueIdentifier: UUID) throws -> Int
    func addItem(textInput: String) -> Void
    func updateListItemStatusToOpposite(for uniqueIdentifier: UUID) -> ListItem
    func updateListItemStatusToSpecificStatus(for uniqueIdentifier: UUID,with status: Bool) -> ListItem
    func deleteListItem(for uniqueIdentifier: UUID) -> Void
    
}


class ListServiceRepository: ListServiceRepositoryProtocol{
    //private let repository: ListServiceRepository
    private var originalList: List?
    
    init( originalList: List) {
        self.originalList = originalList
 //       self.repository = repository
    }
    
    func getItemsList() throws -> [ListItem?] {
        guard let list = originalList?.listItemsArray else {
            print("No LIST!!")
            throw ListError.noList
        }
        return list
    }
    
    func findItemWithItemID(for uniqueIdentifier: UUID) throws -> ListItem {
        var retrievedItem: ListItem? = nil
        
        do {
            let list = try getItemsList()
            
            for item in list {
                if item?.id == uniqueIdentifier {
                    retrievedItem = item
                    break
                }
            }
        } catch ListError.noList {
            print("No List exists")
        } catch {
            print("Something is wrong \(error.localizedDescription)")
        }
        
        if retrievedItem != nil {
            return retrievedItem!
            
        } else {
            print("Sam: Error could not find item specified!!")
            throw ListError.itemNonexistant
        }
        
    }
    
    func getSpecificItemIndexInList(for uniqueIdentifier: UUID) throws -> Int {
        
        var itemIndex = -1
        
        do{
            let list = try getItemsList()
            itemIndex =  list.firstIndex(where: {$0?.id == uniqueIdentifier})!
            
        } catch ListError.noList {
            print("No List exists")
            
        } catch ListError.itemNonexistant{
            print("No List exists")
        }
        catch {
            print("Something is wrong \(error.localizedDescription)")
        }
        
        return itemIndex
    }
    
    func addItem(textInput: String) -> Void {
        do {
            var list = try getItemsList()
            let item = ListItem(id: UUID(), text: textInput, checked: false, dateCreated: Date.now)
            
            list.append(item)
        }  catch ListError.noList {
            print("No List exists")
        }
        catch {
            print("Something is wrong \(error.localizedDescription)")
        }
    }
    
    func updateListItemStatusToOpposite(for uniqueIdentifier: UUID) -> ListItem  {
        
        var itemToUpdate: ListItem? = nil
        do {
            itemToUpdate = try findItemWithItemID(for: uniqueIdentifier)
            
            if itemToUpdate?.checked == false
            {
                itemToUpdate?.checked = true
            }
            
            else if itemToUpdate?.checked == true
            {
                itemToUpdate?.checked = false
            }
            
        } catch ListError.noList {
            print("No List exists")
            
        } catch ListError.itemNonexistant{
            print("No List exists")
        }
        catch {
            print("Something is wrong \(error.localizedDescription)")
        }

        return itemToUpdate!
    }
    
    func updateListItemStatusToSpecificStatus(for uniqueIdentifier: UUID,with status: Bool) -> ListItem  {
        
        var itemToUpdate: ListItem? = nil
        do {
            itemToUpdate = try findItemWithItemID(for: uniqueIdentifier)
            
            
            itemToUpdate?.checked = status
        } catch ListError.noList {
            print("No List exists")
            
        } catch ListError.itemNonexistant{
            print("No List exists")
        }
        catch {
            print("Something is wrong \(error.localizedDescription)")
        }

        return itemToUpdate!
    }
    
    func deleteListItem(for uniqueIdentifier: UUID) {
        var list: [ListItem?]
        let itemToDeleteIndex: Int
        
        do {
            list = try getItemsList()
            itemToDeleteIndex = try getSpecificItemIndexInList(for: uniqueIdentifier)
            list.remove(at: itemToDeleteIndex)
        } catch ListError.noList {
            print("No List exists")
            
        } catch ListError.itemNonexistant{
            print("No List exists")
        }
        catch {
            print("Something is wrong \(error.localizedDescription)")
        }
    }
    
}


