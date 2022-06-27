//
//  FlexItem.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout

public struct FlexItem: FlexView {
    public var view: UIView
    
    public init(view: UIView) {
        self.view = view
    }
    
    public func define(_ superFlex: Flex) {
        superFlex.addItem(view)
    }
}
