//
//  FlexViewBuilder.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import Foundation

@resultBuilder
public struct FlexViewBuilder {
    public static func buildBlock(_ components: FlexView...) -> [FlexView] {
        return components
    }
}

public typealias FlexViewContent = () -> [FlexView]
