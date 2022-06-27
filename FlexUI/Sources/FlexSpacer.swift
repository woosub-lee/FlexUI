//
//  FlexSpacer.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout

public struct FlexSpacer: FlexView {
    public var view: UIView
    
    public init(width: CGFloat? = nil, height: CGFloat? = nil) {
        self.view = UIView()
        self.view.isHidden = true
        self.view.flex.width(width).height(height)
    }
    
    public func define(_ superFlex: Flex) {
        superFlex.addItem(view)
    }
}
