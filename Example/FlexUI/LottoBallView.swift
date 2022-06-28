//
//  LottoBallView.swift
//  FlexUI_Example
//
//  Created by 이우섭 on 2022/06/28.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import FlexLayout
import FlexUI

class LottoBallView: UILabel {
    convenience init() {
        self.init(frame: .zero)
        self.setProperties()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setProperties()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setProperties()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    private func setProperties() {
        self.clipsToBounds = true
        self.font = .boldSystemFont(ofSize: 16)
        self.textAlignment = .center
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
    }
    
    func configure(color: UIColor, number: Int) {
        self.backgroundColor = color
        self.text = "\(number)"
        self.layer.cornerRadius = self.bounds.width / 2
    }
}
