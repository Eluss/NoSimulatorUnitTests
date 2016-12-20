//
//  AppDelegate.swift
//  NoSimulatorUnitTests
//
//  Created by Eliasz Sawicki on 20/12/16.
//  Copyright © 2016 eliaszsawicki. All rights reserved.
//

import UIKit
import NoSimulatorUnitTestsCore
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController: UINavigationController!
    var mainViewController: MainViewController!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
        navigationController = UINavigationController()
        mainViewController = MainViewController(viewModel: MainViewModel())
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = navigationController
        
        navigationController.pushViewController(mainViewController, animated: true)
        
        return true
    }

}

