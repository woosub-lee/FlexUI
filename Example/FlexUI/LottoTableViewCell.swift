//
//  LottoTableViewCell.swift
//  FlexUI_Example
//
//  Created by 이우섭 on 2022/06/28.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import FlexUI

class LottoTableViewCell: UITableViewCell {
    static var reuseIdentifier: String = "LottoReuseIdentifier"
    
    var lottoBallViews: [LottoBallView] = [
        LottoBallView(),
        LottoBallView(),
        LottoBallView(),
        LottoBallView(),
        LottoBallView(),
        LottoBallView()
    ]
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        FlexRoot(container: contentView) {
            FlexHStack(justifyContent: .spaceBetween) {
                FlexItem(view: lottoBallViews[0]).width(60).aspectRatio(1)
                FlexItem(view: lottoBallViews[1]).width(60).aspectRatio(1)
                FlexItem(view: lottoBallViews[2]).width(60).aspectRatio(1)
                FlexItem(view: lottoBallViews[3]).width(60).aspectRatio(1)
                FlexItem(view: lottoBallViews[4]).width(60).aspectRatio(1)
                FlexItem(view: lottoBallViews[5]).width(60).aspectRatio(1)
            }.wrap(.wrap).padding(10)
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        self.contentView.bounds.size.width = size.width
        self.contentView.flex.layout(mode: .adjustHeight)
        return self.contentView.frame.size
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.contentView.flex.layout(mode: .adjustHeight)
        lottoBallViews.forEach {
            $0.layer.cornerRadius = 30
        }
    }
    
    func configure(lotto: Lotto?) {
        if let lotto = lotto {
            for index in 0..<6 {
                let lottoElement = lotto.elements[index]
                lottoBallViews[index].configure(color: lottoElement.color, number: lottoElement.number)
            }
        } else {
            lottoBallViews[0].text = "E"
            lottoBallViews[1].text = "r"
            lottoBallViews[2].text = "r"
            lottoBallViews[3].text = "o"
            lottoBallViews[4].text = "r"
            lottoBallViews[5].text = "!"
        }
    }
}
