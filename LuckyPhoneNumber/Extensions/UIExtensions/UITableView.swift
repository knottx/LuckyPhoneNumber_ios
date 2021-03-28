//
//  UITableView.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

extension UITableView {
    
    func register(cell: UITableViewCell.Type) {
        let nib:UINib = .init(nibName: cell.identifier(), bundle: nil)
        self.register(nib, forCellReuseIdentifier: cell.identifier())
    }
    
    func register(cells:[UITableViewCell.Type]) {
        cells.forEach { (cell) in
            self.register(cell: cell)
        }
    }
    
    func setTableHeaderView(_ tableHeaderView:UITableViewHeaderFooterView) {
        if self.tableHeaderView == nil {
            self.tableHeaderView = tableHeaderView
        }
    }
    
    func setTableFooterView(_ tableFooterView:UITableViewHeaderFooterView) {
        if self.tableFooterView == nil {
            self.tableFooterView = tableFooterView
        }
    }
    
    func dequeueCell<T:UITableViewCell>(of type: T.Type ,for indexPath:IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: T.identifier(), for: indexPath) as! T
    }
    
    func dequeueHeaderFooterView<T:UITableViewHeaderFooterView>(of type: T.Type ) -> T {
        return self.dequeueReusableHeaderFooterView(withIdentifier: T.identifier()) as! T
    }
    
}
