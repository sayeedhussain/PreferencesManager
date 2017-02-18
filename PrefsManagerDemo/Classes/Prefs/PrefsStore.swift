//
//  PrefsStore.swift
//  PersistenceDemo
//
//  Created by Sayeed Munawar Hussain on 17/02/17.
//  Copyright © 2017 Zensoft. All rights reserved.
//

import Foundation

class PrefsStore {
    
    private static var dict: Dictionary<String, Any> = {
        
        if let dict = PrefsPersistence().get() {
            return dict
        }
        
        return Dictionary<String, Any>()
    }()
    
    private static let lock: LockInterface = Lock()

    func setValue(_ value: Any, key: String) {

        PrefsStore.lock.lockBlock {

            PrefsStore.dict[key] = value
            
            PrefsPersistence().put(PrefsStore.dict)
        }
    }
    
    func valueForKey(_ key: String) -> Any? {
        
        return PrefsStore.lock.lockBlock {
            
            return PrefsStore.dict[key]
        }
    }
    
    func removeValueForKey(_ key: String) {
        
        PrefsStore.lock.lockBlock {
            
            PrefsStore.dict[key] = nil
            
            PrefsPersistence().put(PrefsStore.dict)
        }
    }
    
    func clear() {
        
        PrefsStore.lock.lockBlock {
            
            PrefsStore.dict = Dictionary<String, Any>()
            
            PrefsPersistence().put(PrefsStore.dict)
        }
    }
}
