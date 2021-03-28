//
//  PairNumberTableHeaderSectionView.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

class PairNumberTableHeaderSectionView: UIView {

    @IBOutlet weak var goodTypeColorView:UIView!
    @IBOutlet weak var fightTypeColorView:UIView!
    @IBOutlet weak var dangerTypeColorView:UIView!
    
    @IBOutlet weak var goodTypeLabel:UILabel!
    @IBOutlet weak var fightTypeLabel:UILabel!
    @IBOutlet weak var dangerTypeLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.goodTypeColorView.backgroundColor = PairNumberType.good.color
        self.fightTypeColorView.backgroundColor = PairNumberType.fight.color
        self.dangerTypeColorView.backgroundColor = PairNumberType.danger.color
        
        self.goodTypeLabel.textColor = PairNumberType.good.color
        self.fightTypeLabel.textColor = PairNumberType.fight.color
        self.dangerTypeLabel.textColor = PairNumberType.danger.color
        
        [self.goodTypeColorView, self.fightTypeColorView, self.dangerTypeColorView].forEach { (view) in
            view?.setViewCornerRadius(4)
        }
    }

}
