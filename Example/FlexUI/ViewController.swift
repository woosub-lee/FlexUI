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
    var redView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.redView.backgroundColor = .red
        
        self.view.addSubview(rootFlexContainer)
        FlexRoot(container: rootFlexContainer) {
            FlexItem(view: redView).height(300).aspectRatio(1)
        }
    }

    override func viewDidLayoutSubviews() {
        rootFlexContainer.pin.all(self.view.safeAreaInsets)
        rootFlexContainer.flex.layout()
    }

}

