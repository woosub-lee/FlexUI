//
//  LottoRandomPool.swift
//  FlexUI_Example
//
//  Created by 이우섭 on 2022/06/28.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit

struct LottoNumberPool {
    private var numbers: Set<Int> = Set(1...45)
    
    mutating func getRandomNumber() -> Int? {
        guard let randomNumber = numbers.randomElement() else { return nil }
        numbers.remove(randomNumber)
        return randomNumber
    }
}

struct LottoColorPool {
    private let colors: Set<UIColor> =  Set([
        .systemRed,
        .systemYellow,
        .systemGreen,
        .systemBlue
    ])
    
    func getRandomColor() -> UIColor? {
        return colors.randomElement()
    }
}
