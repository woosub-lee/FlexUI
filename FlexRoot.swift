//
//  FlexRoot.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout

@discardableResult
public func FlexRoot(container: UIView,
                     justifyContent: Flex.JustifyContent = .start,
                     alignItems: Flex.AlignItems = .start,
                     @FlexViewBuilder _ content: FlexViewContent) -> Flex {
    let subContents: [FlexView] = content()
    
    container.flex
        .justifyContent(justifyContent)
        .alignItems(alignItems)
    
    for subContent in subContents {
        subContent.define(container.flex)
    }
    return container.flex
}
