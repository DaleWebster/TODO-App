//
//  ListItem.swift
//  TodoApp
//
//  Created by Sam Ali on 10/03/2022.
//

import Foundation

public struct List: Codable{
    var listItemsArray: [ListItem?]
}

public struct ListItem: Codable{
    
    let id: UUID
    var text: String
    var checked: Bool
    var dateCreated: Date
    
// public init(id: UUID, text: String, checked: Bool, dateCreated: Date) {
//     self.id = id
//     self.text = text
//     self.checked = checked
//     self.dateCreated = dateCreated
//
// }
    
  //public var iD: UUID{
  //        get {
  //            return self.id;
  //        }
  //        set {
  //            if newValue < 0 || newValue > 1000 {
  //                // Swift setter cannot throw error.
  //                fatalError("invalid value for id")
  //            } else {
  //                self.id = newValue
  //            }
  //        }
  //    }

  //     public var textT: String {
  //         get {
  //             return self.text
  //         }
  //         set {
  //             // In Swift, non-optional String can never get nil.
  //             if newValue.isEmpty {
  //                 fatalError("Please add somthing to the list")
  //             } else {
  //                 self.text = newValue
  //             }
  //         }
  //     }
    
}
