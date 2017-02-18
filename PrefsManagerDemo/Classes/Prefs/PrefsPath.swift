//
//  PrefsPath.swift
//  PersistenceDemo
//
//  Created by Sayeed Munawar Hussain on 17/02/17.
//  Copyright © 2017 Zensoft. All rights reserved.
//

import Foundation

class PrefsPath {
    
    func savePath() -> String {
        let dir = try! FileManager.default.fu_persistentAppDataPath()
        return (dir as NSString).appendingPathComponent("data")
    }
}
