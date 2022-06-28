//
//  ViewController.swift
//  FlexUI
//
//  Created by woosub-lee on 06/25/2022.
//  Copyright (c) 2022 woosub-lee. All rights reserved.
//

import FlexUI
import FlexLayout
import PinLayout

class ViewController: UIViewController {
    var rootFlexContainer: UIView = UIView()
    
    var titleLabel: UILabel = UILabel()
    var generateButton: UIButton = UIButton()
    
    var tableViewArea: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(rootFlexContainer)
        self.setViewProperties()
        
        FlexRoot(container: rootFlexContainer, direction: .column) {
            FlexHStack {
                FlexItem(view: titleLabel)
                FlexSpacer().grow(1)
                FlexItem(view: generateButton)
            }
            .padding(8, 16)
            
            FlexSpacer(height: 24)
            FlexItem(view: tableViewArea).grow(1)
        }
    }
    
    override func viewDidLayoutSubviews() {
        rootFlexContainer.pin.all(self.view.safeAreaInsets)
        rootFlexContainer.flex.layout()
    }
    
    private func setViewProperties() {
        self.view.backgroundColor = .white
        
        self.titleLabel.text = "FlexUI Example App"
        self.titleLabel.font = .boldSystemFont(ofSize: 24)
        
        self.generateButton.setTitle("Generate", for: .normal)
        self.generateButton.titleLabel?.font = .systemFont(ofSize: 18)
        self.generateButton.setTitleColor(.systemBlue, for: .normal)
        
        self.tableViewArea.backgroundColor = .red
    }
}

