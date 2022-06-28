//
//  LottoTableViewAdapter.swift
//  FlexUI_Example
//
//  Created by 이우섭 on 2022/06/28.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit

class LottoTableViewAdapter: NSObject, UITableViewDataSource, UITableViewDelegate {
    private var lottos: [Lotto?] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.lottos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LottoTableViewCell.reuseIdentifier, for: indexPath) as! LottoTableViewCell
        cell.configure(lotto: lottos[indexPath.row])
        return cell
    }
    
    func generateLotto() {
        self.lottos.append(Lotto.generateRandomLotto())
    }
}
