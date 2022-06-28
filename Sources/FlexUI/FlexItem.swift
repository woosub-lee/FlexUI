//
//  FlexItem.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout
import UIKit

public struct FlexItem: FlexView, FlexDefinable {
    public var view: UIView
    
    public init(view: UIView) {
        self.view = view
    }
    
    func define(superFlex: Flex) {
        superFlex.addItem(view)
    }
}
