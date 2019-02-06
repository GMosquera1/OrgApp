//
//  DataPersistanceManager.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 2/5/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import Foundation
    
final class DataPersistanceManager {
    static func documentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    
    static func filepathToDocumentsDirectory(filename: String) -> URL {
        return documentsDirectory().appendingPathComponent(filename)
    }
}
