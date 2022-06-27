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
    var blueView: UIView = UIView()
    var emptyView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.redView.backgroundColor = .red
        self.blueView.backgroundColor = .blue
        
        self.view.addSubview(rootFlexContainer)
        FlexRoot(container: rootFlexContainer) {
            FlexVStack {
                FlexItem(view: emptyView).height(0).width(300)
                FlexItem(view: redView).width(100).height(100)
                FlexItem(view: blueView).width(100).grow(1)
            }.grow(1).padding(20).backgroundColor(.darkGray)
        }.padding(20).backgroundColor(.lightGray)
    }

    override func viewDidLayoutSubviews() {
        rootFlexContainer.pin.all(self.view.safeAreaInsets)
        rootFlexContainer.flex.layout()
    }

}

