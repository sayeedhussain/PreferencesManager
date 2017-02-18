//
//  ViewController.swift
//  PersistenceDemo
//
//  Created by Sayeed Munawar Hussain on 16/02/17.
//  Copyright © 2017 Zensoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let prefs = Prefs()
        
        var value = Dictionary<String, String>()
        value["A"] = "Apple Pie"
        value["B"] = "Banana Smoothie"
        let key = "DictionaryStringString"
        
        prefs.setValue(value, key: key)
        
        if let getValue = prefs.valueForKey(key) as? Dictionary<String, String> {
            print("\(getValue)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

