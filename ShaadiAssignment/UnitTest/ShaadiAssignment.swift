//
//  ShaadiAssignment.swift
//  ShaadiAssignmentTests
//
//  Created by Sanjay Mali on 14/09/20.
//  Copyright © 2020 theappmaker. All rights reserved.
//

import XCTest
@testable import ShaadiAssignment

class ShaadiAssignment: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("setUpWithError calls before and after each test ")

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        print("tearDownWithError calls before and after each test ")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
//MARK    UserViewModel Unit Test by calling getAlluser
    func testFetchUserList() {
        let vc = ViewController()
        vc.viewModelUser.getAllUser()
    }
    func testFetchUserListByTimeOut(){
        //        Lets create the expectation(description:) which will return an XCTestExpectation object
               let exp = expectation(description:"fetching user list from server")
        
        
               let session: URLSession = URLSession(configuration: .default)
               let url = URL(string: "https://jsonplaceholder.typicode.com/users")
        
               session.dataTask(with: url!) { data, response, error in
                  XCTAssertNil(error)
        //       Finally, we call exp.fulfill() method when the result meets our expectations.
                  exp.fulfill()
               }.resume()
        //      We call waitForExpectation(timeout:handler:) keeps the test
        //       running until all expectations are fulfilled
        //       The timeout interval ends
               waitForExpectations(timeout: 20.0) { (error) in
                  print(error?.localizedDescription ?? "error")
               }
    }
    func testDataModel(){
        let data = UserModel(
         id:2,
         username:"_politeas",
         name:"Sanjay",
         email:"Sanjay@gmail.com",
         phone:"1234567890",
         website:"www.theappmaker.in",
         address:nil,
         company:nil
//         address:[
//           street: "Dayna Park",
//           suite: "Suite 449",
//           city: "Bartholomebury",
//           zipcode: "76495-3109"],
//         company:[
//           name: "Yost and Sons",
//           catchPhrase: "Switchable contextually-based project",
//           bs: "aggregate real-time technologies"
//         ]
        )
    }
//    Note: All tests passed and Excuted
    
}
