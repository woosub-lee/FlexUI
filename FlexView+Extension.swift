//
//  FlexView+Extension.swift
//  FlexUI
//
//  Created by 이우섭 on 2022/06/27.
//

import FlexLayout

extension FlexView {
    public func isIncludedInLayout(_ included: Bool) -> Self {
        self.view.flex.isIncludedInLayout(included)
        return self
    }
    
    public func markDirty() -> Self {
        self.view.flex.markDirty()
        return self
    }

    public func sizeThatFits(size: CGSize) -> CGSize {
        return self.view.flex.sizeThatFits(size: size)
    }

    public func direction(_ value: Flex.Direction) -> Self {
        self.view.flex.direction(value)
        return self
    }

    public func wrap(_ value: Flex.Wrap) -> Self {
        self.view.flex.wrap(value)
        return self
    }
    
    public func layoutDirection(_ value: Flex.LayoutDirection) -> Self {
        self.view.flex.layoutDirection(value)
        return self
    }
    
    public func justifyContent(_ value: Flex.JustifyContent) -> Self {
        self.view.flex.justifyContent(value)
        return self
    }
    
    public func alignItems(_ value: Flex.AlignItems) -> Self {
        self.view.flex.alignItems(value)
        return self
    }

    public func alignSelf(_ value: Flex.AlignSelf) -> Self {
        self.view.flex.alignSelf(value)
        return self
    }

    public func alignContent(_ value: Flex.AlignContent) -> Self {
        self.view.flex.alignContent(value)
        return self
    }

    public func grow(_ value: CGFloat) -> Self {
        self.view.flex.grow(value)
        return self
    }

    public func shrink(_ value: CGFloat) -> Self {
        self.view.flex.shrink(value)
        return self
    }

    public func basis(_ value: CGFloat?) -> Self {
        self.view.flex.basis(value)
        return self
    }

    public func basis(_ percent: FPercent) -> FlexView {
        self.view.flex.basis(percent)
        return self
    }
    
    public func width(_ value: CGFloat?) -> Self {
        self.view.flex.width(value)
        return self
    }
    
    public func width(_ percent: FPercent) -> Self {
        self.view.flex.width(percent)
        return self
    }
    
    public func height(_ value: CGFloat?) -> Self {
        self.view.flex.height(value)
        return self
    }
    
    public func height(_ percent: FPercent) -> Self {
        self.view.flex.height(percent)
        return self
    }

    public func size(_ size: CGSize?) -> Self {
        self.view.flex.size(size)
        return self
    }
    
    public func size(_ sideLength: CGFloat) -> Self {
        self.view.flex.size(sideLength)
        return self
    }
    
    public func minWidth(_ value: CGFloat?) -> Self {
        self.view.flex.minWidth(value)
        return self
    }

    public func minWidth(_ percent: FPercent) -> Self {
        self.view.flex.minWidth(percent)
        return self
    }
    
    public func maxWidth(_ value: CGFloat?) -> Self {
        self.view.flex.maxWidth(value)
        return self
    }

    public func maxWidth(_ percent: FPercent) -> Self {
        self.view.flex.maxWidth(percent)
        return self
    }
    
    public func minHeight(_ value: CGFloat?) -> Self {
        self.view.flex.minHeight(value)
        return self
    }
    
    public func minHeight(_ percent: FPercent) -> Self {
        self.view.flex.minHeight(percent)
        return self
    }
    
    public func maxHeight(_ value: CGFloat?) -> Self {
        self.view.flex.maxHeight(value)
        return self
    }
    
    public func maxHeight(_ percent: FPercent) -> Self {
        self.view.flex.maxHeight(percent)
        return self
    }
    
    public func aspectRatio(_ value: CGFloat?) -> Self {
        self.view.flex.aspectRatio(value)
        return self
    }
    
    public func aspectRatio(of imageView: UIImageView) -> Self {
        self.view.flex.aspectRatio(of: imageView)
        return self
    }
    
    public func position(_ value: Flex.Position) -> Self {
        self.view.flex.position(value)
        return self
    }
    
    public func left(_ value: CGFloat) -> Self {
        self.view.flex.left(value)
        return self
    }
    
    public func left(_ percent: FPercent) -> Self {
        self.view.flex.left(percent)
        return self
    }

    public func top(_ value: CGFloat) -> Self {
        self.view.flex.top(value)
        return self
    }
    
    public func top(_ percent: FPercent) -> Self {
        self.view.flex.top(percent)
        return self
    }
    
    public func right(_ value: CGFloat) -> Self {
        self.view.flex.right(value)
        return self
    }
    
    public func right(_ percent: FPercent) -> Self {
        self.view.flex.right(percent)
        return self
    }
    
    public func bottom(_ value: CGFloat) -> Self {
        self.view.flex.bottom(value)
        return self
    }
    
    public func bottom(_ percent: FPercent) -> Self {
        self.view.flex.bottom(percent)
        return self
    }
    
    public func start(_ value: CGFloat) -> Self {
        self.view.flex.start(value)
        return self
    }
    
    public func start(_ percent: FPercent) -> Self {
        self.view.flex.start(percent)
        return self
    }
    
    public func end(_ value: CGFloat) -> Self {
        self.view.flex.end(value)
        return self
    }
    
    public func end(_ percent: FPercent) -> Self {
        self.view.flex.end(percent)
        return self
    }
    
    public func horizontally(_ value: CGFloat) -> Self {
        self.view.flex.horizontally(value)
        return self
    }
    
    public func horizontally(_ percent: FPercent) -> Self {
        self.view.flex.horizontally(percent)
        return self
    }
    
    public func vertically(_ value: CGFloat) -> Self {
        self.view.flex.vertically(value)
        return self
    }
    
    public func vertically(_ percent: FPercent) -> Self {
        self.view.flex.vertically(percent)
        return self
    }
    
    public func all(_ value: CGFloat) -> Self {
        self.view.flex.all(value)
        return self
    }
    
    public func all(_ percent: FPercent) -> Self {
        self.view.flex.all(percent)
        return self
    }
    
    public func marginTop(_ value: CGFloat) -> Self {
        self.view.flex.marginTop(value)
        return self
    }

    public func marginTop(_ percent: FPercent) -> Self {
        self.view.flex.marginTop(percent)
        return self
    }
    
    public func marginLeft(_ value: CGFloat) -> Self {
        self.view.flex.marginLeft(value)
        return self
    }

    public func marginLeft(_ percent: FPercent) -> Self {
        self.view.flex.marginLeft(percent)
        return self
    }
    
    public func marginBottom(_ value: CGFloat) -> Self {
        self.view.flex.marginBottom(value)
        return self
    }

    public func marginBottom(_ percent: FPercent) -> Self {
        self.view.flex.marginBottom(percent)
        return self
    }
    
    public func marginRight(_ value: CGFloat) -> Self {
        self.view.flex.marginRight(value)
        return self
    }

    public func marginRight(_ percent: FPercent) -> Self {
        self.view.flex.marginRight(percent)
        return self
    }
    
    public func marginStart(_ value: CGFloat) -> Self {
        self.view.flex.marginStart(value)
        return self
    }

    public func marginStart(_ percent: FPercent) -> Self {
        self.view.flex.marginStart(percent)
        return self
    }
    
    public func marginEnd(_ value: CGFloat) -> Self {
        self.view.flex.marginEnd(value)
        return self
    }

    public func marginEnd(_ percent: FPercent) -> Self {
        self.view.flex.marginEnd(percent)
        return self
    }
    
    public func marginHorizontal(_ value: CGFloat) -> Self {
        self.view.flex.marginHorizontal(value)
        return self
    }

    public func marginHorizontal(_ percent: FPercent) -> Self {
        self.view.flex.marginHorizontal(percent)
        return self
    }
    
    public func marginVertical(_ value: CGFloat) -> Self {
        self.view.flex.marginVertical(value)
        return self
    }

    public func marginVertical(_ percent: FPercent) -> Self {
        self.view.flex.marginVertical(percent)
        return self
    }
    
    public func margin(_ insets: UIEdgeInsets) -> Self {
        self.view.flex.margin(insets)
        return self
    }

    public func margin(_ directionalInsets: NSDirectionalEdgeInsets) -> Self {
        self.view.flex.margin(directionalInsets)
        return self
    }
    
    public func margin(_ value: CGFloat) -> Self {
        self.view.flex.margin(value)
        return self
    }

    public func margin(_ percent: FPercent) -> Self {
        self.view.flex.margin(percent)
        return self
    }
    
    public func margin(_ vertical: CGFloat, _ horizontal: CGFloat) -> Self {
        self.view.flex.margin(vertical, horizontal)
        return self
    }

    public func margin(_ vertical: FPercent, _ horizontal: FPercent) -> Self {
        self.view.flex.margin(vertical, horizontal)
        return self
    }
    
    public func margin(_ top: CGFloat, _ horizontal: CGFloat, _ bottom: CGFloat) -> Self {
        self.view.flex.margin(top, horizontal, bottom)
        return self
    }

    public func margin(_ top: FPercent, _ horizontal: FPercent, _ bottom: FPercent) -> Self {
        self.view.flex.margin(top, horizontal, bottom)
        return self
    }

    public func margin(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> Self {
        self.view.flex.margin(top, left, bottom, right)
        return self
    }

    public func margin(_ top: FPercent, _ left: FPercent, _ bottom: FPercent, _ right: FPercent) -> Self {
        self.view.flex.margin(top, left, bottom, right)
        return self
    }
    
    public func paddingTop(_ value: CGFloat) -> Self {
        self.view.flex.paddingTop(value)
        return self
    }

    public func paddingTop(_ percent: FPercent) -> Self {
        self.view.flex.paddingTop(percent)
        return self
    }

    public func paddingLeft(_ value: CGFloat) -> Self {
        self.view.flex.paddingLeft(value)
        return self
    }

    public func paddingLeft(_ percent: FPercent) -> Self {
        self.view.flex.paddingLeft(percent)
        return self
    }

    public func paddingBottom(_ value: CGFloat) -> Self {
        self.view.flex.paddingBottom(value)
        return self
    }

    public func paddingBottom(_ percent: FPercent) -> Self {
        self.view.flex.paddingBottom(percent)
        return self
    }
    
    public func paddingRight(_ value: CGFloat) -> Self {
        self.view.flex.paddingRight(value)
        return self
    }

    public func paddingRight(_ percent: FPercent) -> Self {
        self.view.flex.paddingRight(percent)
        return self
    }
    
    public func paddingStart(_ value: CGFloat) -> Self {
        self.view.flex.paddingStart(value)
        return self
    }

    public func paddingStart(_ percent: FPercent) -> Self {
        self.view.flex.paddingStart(percent)
        return self
    }
    
    public func paddingEnd(_ value: CGFloat) -> Self {
        self.view.flex.paddingEnd(value)
        return self
    }

    public func paddingEnd(_ percent: FPercent) -> Self {
        self.view.flex.paddingEnd(percent)
        return self
    }

    public func paddingHorizontal(_ value: CGFloat) -> Self {
        self.view.flex.paddingHorizontal(value)
        return self
    }

    public func paddingHorizontal(_ percent: FPercent) -> Self {
        self.view.flex.paddingHorizontal(percent)
        return self
    }

    public func paddingVertical(_ value: CGFloat) -> Self {
        self.view.flex.paddingVertical(value)
        return self
    }

    public func paddingVertical(_ percent: FPercent) -> Self {
        self.view.flex.paddingVertical(percent)
        return self
    }

    public func padding(_ insets: UIEdgeInsets) -> Self {
        self.view.flex.padding(insets)
        return self
    }

    public func padding(_ directionalInsets: NSDirectionalEdgeInsets) -> Self {
        self.view.flex.padding(directionalInsets)
        return self
    }

    public func padding(_ value: CGFloat) -> Self {
        self.view.flex.padding(value)
        return self
    }

    public func padding(_ percent: FPercent) -> Self {
        self.view.flex.padding(percent)
        return self
    }

    public func padding(_ vertical: CGFloat, _ horizontal: CGFloat) -> Self {
        self.view.flex.padding(vertical, horizontal)
        return self
    }

    public func padding(_ vertical: FPercent, _ horizontal: FPercent) -> Self {
        self.view.flex.padding(vertical, horizontal)
        return self
    }

    public func padding(_ top: CGFloat, _ horizontal: CGFloat, _ bottom: CGFloat) -> Self {
        self.view.flex.padding(top, horizontal, bottom)
        return self
    }

    public func padding(_ top: FPercent, _ horizontal: FPercent, _ bottom: FPercent) -> Self {
        self.view.flex.padding(top, horizontal, bottom)
        return self
    }

    public func padding(_ top: CGFloat, _ left: CGFloat, _ bottom: CGFloat, _ right: CGFloat) -> Self {
        self.view.flex.padding(top, left, bottom, right)
        return self
    }

    public func padding(_ top: FPercent, _ left: FPercent, _ bottom: FPercent, _ right: FPercent) -> Self {
        self.view.flex.padding(top, left, bottom, right)
        return self
    }
    
    public func backgroundColor(_ color: UIColor) -> Self {
        self.view.flex.backgroundColor(color)
        return self
    }
    
    public func display(_ value: Flex.Display) -> Self {
        self.view.flex.display(value)
        return self
    }
}
