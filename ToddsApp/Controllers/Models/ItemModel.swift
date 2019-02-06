//
//  ItemModel.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 2/5/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import Foundation

final class ItemModel {
    private static let filename = "OrgList.plist"
    private static var items = [Item]()
    
    static func getItems() -> [Item] {
        // FileManager
        let path = DataPersistanceManager.filepathToDocumentsDirectory(filename: filename).path
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                    items = try PropertyListDecoder().decode([Item].self, from: data)
                } catch {
                    print("property list decoding error: \(error)")
                }
            } else {
                print("data is nil")
            }
        } else {
            print("\(filename) does not exist")
        }
        items = items.sorted { $0.date > $1.date }
        return items
    }
    
    static func addItem(item: Item) {
        items.append(item)
        save()
    }
    
    static func delete(item: Item, atIndex index: Int) {
        items.remove(at: index)
        save()
    }
    
    static func save() {
        let path = DataPersistanceManager.filepathToDocumentsDirectory(filename: filename)
        do {
            let data = try PropertyListEncoder().encode(items)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property list encoding error: \(error)")
        }
    }
    
    static func updateItem(updatedItem: Item, atIndex index: Int) {
        items[index] = updatedItem
        save()
    }
}
