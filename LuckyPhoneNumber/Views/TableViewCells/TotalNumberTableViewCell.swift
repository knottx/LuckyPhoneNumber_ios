//
//  TotalNumberTableViewCell.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

class TotalNumberTableViewCell: UITableViewCell {

    @IBOutlet weak var totalNumberLabel:UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.totalNumberLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(item: TotalNumber) {
        self.totalNumberLabel.text = item.value
    }
    
}
