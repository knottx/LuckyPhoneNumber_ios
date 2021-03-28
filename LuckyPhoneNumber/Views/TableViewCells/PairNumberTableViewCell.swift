//
//  PairNumberTableViewCell.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

class PairNumberTableViewCell: UITableViewCell {

    @IBOutlet weak var pairNumberLabel:UILabel!
    @IBOutlet weak var pairNumberView:UIView!
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var descriptionLabel:UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.pairNumberLabel.text = nil
        self.pairNumberView.backgroundColor = .clear
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.pairNumberView.setViewCornerRadius(6)
    }
    
    func configure(item: PairNumber) {
        self.pairNumberLabel.text = item.value
        DispatchQueue.main.async {
            self.pairNumberView.backgroundColor = item.type.color
        }
    }
    
}
