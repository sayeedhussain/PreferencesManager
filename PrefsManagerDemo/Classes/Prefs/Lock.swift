//
//  Lock.swift
//  PersistenceDemo
//
//  Created by Sayeed Munawar Hussain on 18/02/17.
//  Copyright © 2017 Zensoft. All rights reserved.
//

import Foundation


class Lock: LockInterface {

    private let lock = NSLock()
    
    func lockBlock<T>(block: () -> T) -> T {
        
        var retVal: T
        
        lock.lock()
        
        retVal = block()
        
        lock.unlock()
        
        return retVal
    }    
}
