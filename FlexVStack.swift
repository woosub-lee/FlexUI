//
//  FlexVStack.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout

public struct FlexVStack: FlexView {
    public var view: UIView
    private let subContents: [FlexView]
    
    public init(view: UIView = UIView(),
                justifyContent: Flex.JustifyContent = .start,
                alignItems: Flex.AlignItems = .start,
                @FlexViewBuilder _ content: FlexViewContent) {
        self.view = view
        self.subContents = content()
        self.view.flex.justifyContent(justifyContent).alignItems(alignItems)
    }
    
    public func define(_ superFlex: Flex) {
        let stack = superFlex.addItem(view)
            .direction(.column)
        
        for subContent in subContents {
            subContent.define(stack)
        }
    }
}
