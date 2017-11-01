//
//  SongBarTests.swift
//  SongBarTests
//
//  Created by Justin Oakes on 31/10/17.
//  Copyright © 2017 corpe. All rights reserved.
//

import XCTest
import Cocoa
import ScriptingBridge

class SongBarTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInstalledApps() {
        let installedApps: [kServices] = MediaController.installedPlayers()
        XCTAssertEqual(installedApps.count , 2)
    }
    
    func testRunningApps() {
        // the XCAssert should change depending on what's running
        let runningApps: [SBApplication] = MediaController.runningPlayers()
        XCTAssertEqual(runningApps.count, 2)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
