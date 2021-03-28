//
//  UIViewController.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

extension UIViewController {
    
    class func newInstance<T: UIViewController>(of type: T.Type, storyboard:Storyboard) -> T {
        let identifier = String(describing: self)
        return storyboard.load().instantiateViewController(withIdentifier: identifier) as! T
    }
    
}
