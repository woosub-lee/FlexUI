# FlexUI

[![CI Status](https://img.shields.io/travis/woosub-lee/FlexUI.svg?style=flat)](https://travis-ci.org/woosub-lee/FlexUI)
[![Version](https://img.shields.io/cocoapods/v/FlexUI.svg?style=flat)](https://cocoapods.org/pods/FlexUI)
[![License](https://img.shields.io/cocoapods/l/FlexUI.svg?style=flat)](https://cocoapods.org/pods/FlexUI)
[![Platform](https://img.shields.io/cocoapods/p/FlexUI.svg?style=flat)](https://cocoapods.org/pods/FlexUI)

## Example

```swift
self.view.addSubView(rootFlexContainer)

FlexRoot(container: rootFlexContainer) {
    FlexHStack {
        FlexItem(view: titleLabel)
        FlexSpacer().grow(1)
        FlexItem(view: settingButton)
    }
    .height(100)
    .padding(8, 16)
    .marginBottom(24)
    
    FlexItem(view: contentView).grow(1)
}
```

## Requirements

## Installation

FlexUI is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'FlexUI'
```

## Author

woosub-lee, woosub.dev@gmail.com

## License

FlexUI is available under the MIT license. See the LICENSE file for more info.

## Inspiration from

SwiftUI  
[KarrotFlex](https://github.com/daangn/KarrotFlex)  
