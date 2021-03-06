//
//  HomeTableHeaderView.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

class HomeTableHeaderView: UITableViewHeaderFooterView {

    @IBOutlet weak var textField:UITextField!
    @IBOutlet weak var actionButton:UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.textField.keyboardType = .numberPad
        self.actionButton.setTitle("common_analyze".localized(), for: .normal)
        self.actionButton.setViewCornerRadius(10)
    }
    
}
