//
//  MainView.swift
//  NoSimulatorUnitTests
//
//  Created by Eliasz Sawicki on 20/12/16.
//  Copyright © 2016 eliaszsawicki. All rights reserved.
//

import Foundation
import UIKit
import NoSimulatorUnitTestsCore

class MainView: UIView {

    private var viewModel: MainViewModel
    private var topButton: UIButton!
    private var bottomButton: UIButton!
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func didTapTopButton() {
        viewModel.selectTopAction()
    }
    
    func didTapBottomButton() {
        viewModel.selectBottomAction()
    }
 
    private func setupView() {
        setupVisuals()
        createComponents()
        addViewsToSuperview()
        applyConstraints()
    }
    
    private func setupVisuals() {
        backgroundColor = .white
    }
    
    private func createButton(with title: String) -> UIButton {
        let button = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 4
        button.backgroundColor = .purple
        button.setTitle(title, for: .normal)
        return button
    }
    
    private func createComponents() {
        topButton = createButton(with: viewModel.topButtonTitle)
        topButton.addTarget(self, action: #selector(didTapTopButton), for: .touchUpInside)
        bottomButton = createButton(with: viewModel.bottomButtonTitle)
        bottomButton.addTarget(self, action: #selector(didTapBottomButton), for: .touchUpInside)
    }
    
    private func addViewsToSuperview() {
        addSubview(topButton)
        addSubview(bottomButton)
    }
    
    private func applyConstraints() {
        topButton.translatesAutoresizingMaskIntoConstraints = false
        bottomButton.translatesAutoresizingMaskIntoConstraints = false
        
        topButton.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
        topButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 50).isActive = true
        topButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -50).isActive = true
        topButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
        
        bottomButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -100).isActive = true
        bottomButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 50).isActive = true
        bottomButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -50).isActive = true
        bottomButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
    }
}
