//
//  Storyboard.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

enum Storyboard: String {

    case main = "Main"
    
    func name() -> String {
        return self.rawValue
    }
    
    func load() -> UIStoryboard {
        return UIStoryboard.init(name: self.name(), bundle: nil)
    }
    
}
