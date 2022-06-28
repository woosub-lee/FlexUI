//
//  FlexSpacer.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout
import UIKit

public struct FlexSpacer: FlexView, FlexDefinable {
    public var view: UIView
    
    public init(width: CGFloat? = nil, height: CGFloat? = nil) {
        self.view = UIView()
        self.view.isHidden = true
        self.view.flex.width(width).height(height)
    }
    
    func define(superFlex: Flex) {
        superFlex.addItem(view)
    }
}
