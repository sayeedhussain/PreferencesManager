//
//  LockInterface.swift
//  PersistenceDemo
//
//  Created by Sayeed Munawar Hussain on 18/02/17.
//  Copyright © 2017 Zensoft. All rights reserved.
//

import Foundation

protocol LockInterface {
    
    func lockBlock<T>(block: () -> (T)) -> T
}
