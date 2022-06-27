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
    var settingLabel: UILabel = UILabel()
    var redView: UIView = UIView()
    var blueView: UIView = UIView()
    var emptyView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.redView.backgroundColor = .red
        self.blueView.backgroundColor = .blue
        self.titleLabel.text = "Title"
        self.titleLabel.font = .boldSystemFont(ofSize: 32)
        self.settingLabel.text = "Settings"
        self.settingLabel.font = .systemFont(ofSize: 24)
        
        
        self.view.addSubview(rootFlexContainer)
        FlexRoot(container: rootFlexContainer) {
            FlexVStack {
                FlexHStack {
                    FlexItem(view: titleLabel)
                    FlexSpacer().grow(1)
                    FlexItem(view: settingLabel)
                }.padding(0, 8)
                FlexItem(view: redView).grow(1)
            }.grow(1)
        }.backgroundColor(.lightGray)
        
        self.rootFlexContainer.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(update)))
    }

    override func viewDidLayoutSubviews() {
        rootFlexContainer.pin.all(self.view.safeAreaInsets)
        rootFlexContainer.flex.layout()
    }
    
    @objc func update() {
        rootFlexContainer.flex.markDirty()
        rootFlexContainer.setNeedsLayout()
        rootFlexContainer.layoutIfNeeded()
    }

}

