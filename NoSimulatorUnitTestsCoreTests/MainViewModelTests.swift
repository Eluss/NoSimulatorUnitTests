//
//  MainViewModelTests.swift
//  NoSimulatorUnitTests
//
//  Created by Eliasz Sawicki on 20/12/16.
//  Copyright © 2016 eliaszsawicki. All rights reserved.
//

import XCTest
@testable import NoSimulatorUnitTestsCore

class MainViewModelTests: XCTestCase {

    func testTopButtonTitle() {
        let viewModel = MainViewModel()
        XCTAssert(viewModel.topButtonTitle == "Top Button")
    }
    
    func testBottomButtonTitle() {
        let viewModel = MainViewModel()
        XCTAssert(viewModel.bottomButtonTitle == "Bottom Button")
    }
    
}
