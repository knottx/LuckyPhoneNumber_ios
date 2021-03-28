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
    
    var title: String {
        switch self {
        case .danger:   return "pair_number_type_danger".localized()
        case .fight:    return "pair_number_type_fight".localized()
        case .good:     return "pair_number_type_good".localized()
        }
    }
    
    var color: UIColor {
        switch self {
        case .danger:   return .red
        case .fight:    return .orange
        case .good:     return .green
        }
    }
    
}
