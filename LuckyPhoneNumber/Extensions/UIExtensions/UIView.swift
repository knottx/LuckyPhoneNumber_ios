//
//  UIView.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

extension UIView {
    
    class func identifier() -> String {
        return String(describing: self)
    }
    
    class func loadFromNib<T:UIView>(of type: T.Type) -> T {
        return UINib(nibName: self.identifier(), bundle: nil).instantiate(withOwner: nil, options: nil).first as! T
    }
    
    
    func setViewCornerRadius(_ value:CGFloat, masksToBounds:Bool = true) {
        self.layer.cornerRadius = value
        self.layer.masksToBounds = masksToBounds
    }
    
    func setViewCircle(masksToBounds:Bool = true) {
        self.setViewCornerRadius(self.frame.height / 2, masksToBounds: masksToBounds)
    }
}

