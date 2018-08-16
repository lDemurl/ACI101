//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Miguel on 16/08/18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {
    
    var entryUnderTest: Entry!
    
    override func setUp() {
        super.setUp()
        entryUnderTest = Entry("Title", "Content")
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        entryUnderTest = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSerialization()
    {
        
        let serializationData = FileEntryStore.serialize(entryUnderTest)
        let entry = FileEntryStore.deserialize(serializationData!)
        
        XCTAssertEqual(entry?.title, "Title","Title does not match")
        XCTAssertEqual(entry?.content,"Content", "Content does not match")
        
    }
    
}
