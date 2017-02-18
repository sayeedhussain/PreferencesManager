//
//  PrefsPersistence.swift
//  PersistenceDemo
//
//  Created by Sayeed Munawar Hussain on 17/02/17.
//  Copyright © 2017 Zensoft. All rights reserved.
//

import Foundation

class PrefsPersistence {
    
    private let path = PrefsPath()
    
    @discardableResult func put(_ dict: Dictionary<String, Any>) -> Bool {
        return (dict as NSDictionary).write(toFile: path.savePath(), atomically: true)
    }
    
    func get() -> Dictionary<String, Any>? {
        
        if let dictionary = NSDictionary(contentsOfFile: path.savePath()) {
            let dict = dictionary as! Dictionary<String, Any>
            return dict
        }
        
        return nil
    }
}
