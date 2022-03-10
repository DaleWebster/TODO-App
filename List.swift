//
//  List.swift
//  TodoApp
//
//  Created by Sam Ali on 01/03/2022.
//

import Foundation

public struct ListItem: Codable{
    
    public let id: UUID
    public let text: String
    public let checked: Bool
    public let dateCreated: Date
    
    public init(id: UUID, text: String, checked: Bool, dateCreated: Date) {
        self.id = id
        self.text = text
        self.checked = checked
        self.dateCreated = dateCreated
        
    }
}
