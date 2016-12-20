//
//  MainViewModel.swift
//  NoSimulatorUnitTests
//
//  Created by Eliasz Sawicki on 20/12/16.
//  Copyright © 2016 eliaszsawicki. All rights reserved.
//

import Foundation

public class MainViewModel {
    
    public var topButtonTitle: String = "Top Button"
    public var bottomButtonTitle: String = "Bottom Button"
    
    public init() {
        
    }
    
    public func selectTopAction() {
        print("Top action")
    }
    
    public func selectBottomAction() {
        print("Bottom action")    
    }
}
