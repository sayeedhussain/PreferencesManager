//
//  Prefs.swift
//  PersistenceDemo
//
//  Created by Sayeed Munawar Hussain on 17/02/17.
//  Copyright © 2017 Zensoft. All rights reserved.
//

import Foundation

internal protocol PrefsCompatible {
    
}

extension String: PrefsCompatible {
    
}

extension Int: PrefsCompatible {
    
}

extension Double: PrefsCompatible {
    
}

extension Float: PrefsCompatible {
    
}

extension Bool: PrefsCompatible {
    
}

extension Data: PrefsCompatible {
    
}

protocol PrefsInterface {
    
    //primitives
    func setValue<T: PrefsCompatible>(_ value: T, key: String)

    //arrays
    func setValue<T: PrefsCompatible>(_ value: [T], key: String)
    
    //sets
    func setValue<T: PrefsCompatible>(_ value: Set<T>, key: String) where T: Hashable

    //dictionaries
    func setValue<T: PrefsCompatible, U: PrefsCompatible>(_ value: Dictionary<U, T>, key: String)
    func setValue<T: PrefsCompatible, U: PrefsCompatible>(_ value: Dictionary<U, [T]>, key: String)
    func setValue<T: PrefsCompatible, U: PrefsCompatible>(_ value: Dictionary<U, Set<T>>, key: String) where T: Hashable
    
    func valueForKey(_ key: String) -> Any?
    
    func removeValueForKey(_ key: String)
    
    func clear()
}
