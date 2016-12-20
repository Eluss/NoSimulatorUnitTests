//
//  MainViewController.swift
//  NoSimulatorUnitTests
//
//  Created by Eliasz Sawicki on 20/12/16.
//  Copyright © 2016 eliaszsawicki. All rights reserved.
//

import Foundation
import UIKit
import NoSimulatorUnitTestsCore

class MainViewController: UIViewController {
    
    private var viewModel: MainViewModel
    private var mainView: MainView!
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    private func setupViewController() {
        title = "Main"
        mainView = MainView(viewModel: viewModel)
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mainView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        mainView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
}
