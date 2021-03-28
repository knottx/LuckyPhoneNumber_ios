//
//  PairNumberType.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

enum PairNumberType {
    case danger
    case fight
    case good
    
    var color:UIColor {
        switch self {
        case .danger:   return .red
        case .fight:    return .orange
        case .good:     return .green
        }
    }
    
}
