//
//  FlexRoot.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout

@discardableResult
public func FlexRoot(container: UIView,
                     direction: Flex.Direction = .column,
                     justifyContent: Flex.JustifyContent = .start,
                     alignItems: Flex.AlignItems = .stretch,
                     @FlexViewBuilder _ content: FlexViewContent) -> Flex {
    let subContents: [FlexView] = content()
    
    let flex = container.flex
        .direction(direction)
        .justifyContent(justifyContent)
        .alignItems(alignItems)
    
    flex.define {
        for subContent in subContents {
            subContent.define($0)
        }
    }
    return flex
}
