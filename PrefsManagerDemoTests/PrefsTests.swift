//
//  PersistenceDemoTests.swift
//  PersistenceDemoTests
//
//  Created by Sayeed Munawar Hussain on 16/02/17.
//  Copyright © 2017 Zensoft. All rights reserved.
//

import XCTest
@testable import PersistenceDemo

class PrefsTests: XCTestCase {
    
    override func setUp() {                
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSetValue_Primitives_String() {
        
        let prefs = Prefs()
        
        let value = "Hello"
        let key = "StringPrimitive"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! String
        
        XCTAssert(value == getValue)
    }

    func testSetValue_Primitives_Int() {
        
        let prefs = Prefs()
        
        let value = 1
        let key = "IntPrimitive"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! Int
        
        XCTAssert(value == getValue)
    }

    func testSetValue_Primitives_Double() {
        
        let prefs = Prefs()
        
        let value = 2.0 as Double
        let key = "DoublePrimitive"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! Double
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_Primitives_Float() {
        
        let prefs = Prefs()
        
        let value = 2.0 as Float
        let key = "FloatPrimitive"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! Float
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_Primitives_Bool() {
        
        let prefs = Prefs()
        
        let value = true
        let key = "BoolPrimitive"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! Bool
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_StringArray() {
        
        let prefs = Prefs()
        
        let value = ["Hello"]
        let key = "StringArray"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! [String]
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_IntArray() {
        
        let prefs = Prefs()
        
        let value = [1]
        let key = "IntArray"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! [Int]
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_DoubleArray() {
        
        let prefs = Prefs()
        
        let value = [2.0 as Double]
        let key = "DoubleArray"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! [Double]
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_FloatArray() {
        
        let prefs = Prefs()
        
        let value = [2.0 as Float]
        let key = "FloatArray"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! [Float]
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_BoolArray() {
        
        let prefs = Prefs()
        
        let value = [true]
        let key = "BoolArray"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! [Bool]
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_StringSet() {
        
        let prefs = Prefs()
        
        let value = Set(["Hello"])
        let key = "StringSet"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! Set<String>
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_IntSet() {
        
        let prefs = Prefs()
        
        let value = Set([1])
        let key = "IntSet"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! Set<Int>
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_DoubleSet() {
        
        let prefs = Prefs()
        
        let value = Set([2.0 as Double])
        let key = "DoubleSet"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! Set<Double>
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_FloatSet() {
        
        let prefs = Prefs()
        
        let value = Set([2.0 as Float])
        let key = "FloatSet"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! Set<Float>
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_BoolSet() {
        
        let prefs = Prefs()
        
        let value = Set([true])
        let key = "BoolSet"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! Set<Bool>
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_DictionaryPrimitivePrimitive() {
        
        let prefs = Prefs()
        
        var value = Dictionary<String, String>()
        value["A"] = "Apple"
        value["B"] = "Banana"
        let key = "DictionaryStringString"
        
        prefs.setValue(value, key: key)
        let getValue = prefs.valueForKey(key) as! Dictionary<String, String>
        
        XCTAssert(value == getValue)
    }
    
    func testSetValue_DictionaryPrimitivePrimitiveArray() {
        
        let prefs = Prefs()
        
        var values = Dictionary<Int, Array<String>>()
        values[1] = ["Apple", "Apricot"]
        values[2] = ["Banana", "Blueberry"]
        let key = "DictionaryIntStringArray"
        
        prefs.setValue(values, key: key)
        let getValue = prefs.valueForKey(key) as! Dictionary<Int, Array<String>>

        for (key, value) in values {
            XCTAssert(value == getValue[key]!)
        }
    }
    
    func testSetValue_DictionaryPrimitivePrimitiveSet() {
        
        let prefs = Prefs()
        
        var values = Dictionary<Int, Set<String>>()
        values[1] = Set(["Apple", "Apricot"])
        values[2] = Set(["Banana", "Blueberry"])
        let key = "DictionaryIntStringSet"
        
        prefs.setValue(values, key: key)
        let getValue = prefs.valueForKey(key) as! Dictionary<Int, Set<String>>
        
        for (key, value) in values {
            XCTAssert(value == getValue[key]!)
        }
    }

}
