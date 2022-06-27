//
//  ViewController.swift
//  FlexUI
//
//  Created by woosub-lee on 06/25/2022.
//  Copyright (c) 2022 woosub-lee. All rights reserved.
//

import FlexUI
import PinLayout

class ViewController: UIViewController {

    var rootFlexContainer: UIView = UIView()
    var redView: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.redView.backgroundColor = .red
        self.redView.text = "1"
        
        self.view.addSubview(rootFlexContainer)
        FlexRoot(container: rootFlexContainer) {
            FlexItem(view: redView)
        }
    }

    override func viewDidLayoutSubviews() {
        rootFlexContainer.pin.all()
        rootFlexContainer.flex.layout()
    }

}

