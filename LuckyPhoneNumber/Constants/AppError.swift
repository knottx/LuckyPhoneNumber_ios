//
//  AppError.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import Foundation

enum AppError: Error {
    case invalidPhoneNumber
}

extension AppError: LocalizedError {
    
    var title:String {
        switch self {
        case .invalidPhoneNumber: return "invalid_phone_number".localized()
        default: return "error_title".localized()
        }
    }
    
    var message:String {
        switch self {
        case .invalidPhoneNumber: return "invalid_phone_number_message".localized()
        }
    }
    
}
