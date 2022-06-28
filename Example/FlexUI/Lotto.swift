//
//  Lotto.swift
//  FlexUI_Example
//
//  Created by 이우섭 on 2022/06/28.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit

struct LottoElement {
    let color: UIColor
    let number: Int
}

struct Lotto {
    var elements: Array<LottoElement> = []
    
    static func generateRandomLotto() -> Lotto? {
        var numberPool: LottoNumberPool = LottoNumberPool()
        let colorPool: LottoColorPool = LottoColorPool()
        var elements: Array<LottoElement> = Array()
        for _ in 0..<6 {
            guard let number = numberPool.getRandomNumber() else { return nil }
            guard let color = colorPool.getRandomColor() else { return nil }
            let element = LottoElement(color: color, number: number)
            elements.append(element)
        }
        return Lotto(elements: elements.sorted(by: { $0.number < $1.number }))
    }
}
