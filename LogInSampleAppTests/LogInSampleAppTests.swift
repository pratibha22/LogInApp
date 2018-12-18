//
//  LogInSampleAppTests.swift
//  LogInSampleAppTests
//
//  Created by iOSDev on 14/12/18.
//  Copyright © 2018 tcs. All rights reserved.
//

import XCTest
@testable import LogInSampleApp

class LogInSampleAppTests: XCTestCase {
    
    var user:User?
    var testUser: User?
    
    override func setUp() {
        super.setUp()
        user = DataManager.sharedInstance.getUser()
        testUser = User(userName: "test", passwrd: "test123")
    }
    
    override func tearDown() {
        super.tearDown()
        user = nil
    }
    
    func testUserNameValid()  {
        
        XCTAssertEqual(testUser?.userName, user?.userName)
        
    }
    
    func testPasswordValid()  {
        
        XCTAssertEqual(testUser?.passwrd, user?.passwrd)
        
    }

    
    
    
}
