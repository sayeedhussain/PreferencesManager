//
//  PrefsImpl.swift
//  PersistenceDemo
//
//  Created by Sayeed Munawar Hussain on 17/02/17.
//  Copyright © 2017 Zensoft. All rights reserved.
//

import Foundation

final internal class Prefs: PrefsInterface {
    
    let prefsStore = PrefsStore()
    
    //Primitives
    func setValue<T: PrefsCompatible>(_ value: T, key: String) {
        prefsStore.setValue(value, key: key)
    }
    
    //Arrays
    func setValue<T: PrefsCompatible>(_ value: [T], key: String) {
        prefsStore.setValue(value, key: key)
    }
    
    //Sets
    func setValue<T: Hashable>(_ value: Set<T>, key: String) where T: PrefsCompatible {
        prefsStore.setValue(value, key: key)
    }
    
    //Dictionaries
    func setValue<T: PrefsCompatible, U: PrefsCompatible>(_ value: Dictionary<U, T>, key: String) {
        prefsStore.setValue(value, key: key)
    }
    
    func setValue<T: PrefsCompatible, U: PrefsCompatible>(_ value: Dictionary<U, [T]>, key: String) {
        prefsStore.setValue(value, key: key)
    }

    func setValue<T: PrefsCompatible, U: PrefsCompatible>(_ value: Dictionary<U, Set<T>>, key: String) where T: Hashable {
        prefsStore.setValue(value, key: key)
    }
    
    func valueForKey(_ key: String) -> Any? {
        return prefsStore.valueForKey(key)
    }
    
    func removeValueForKey(_ key: String) {
        prefsStore.removeValueForKey(key)
    }

    func clear() {
        return prefsStore.clear()
    }
}
