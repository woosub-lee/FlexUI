//
//  FlexVStack.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout

public struct FlexVStack: FlexView, FlexDefinable {
    public var view: UIView
    private let subContents: [FlexView]
    
    public init(view: UIView = UIView(),
                justifyContent: Flex.JustifyContent = .start,
                alignItems: Flex.AlignItems = .stretch,
                @FlexViewBuilder _ content: FlexViewContent) {
        self.view = view
        self.subContents = content()
        self.view.flex.justifyContent(justifyContent).alignItems(alignItems)
    }
    
    func define(superFlex: Flex) {
        let stack = superFlex.addItem(view)
            .direction(.column)
        
        for subContent in subContents.compactMap({ $0 as? FlexDefinable }) {
            subContent.define(superFlex: stack)
        }
    }
}
