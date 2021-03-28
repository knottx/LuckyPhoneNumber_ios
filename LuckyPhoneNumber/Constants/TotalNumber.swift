//
//  TotalNumber.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import Foundation

enum TotalNumber: String, Codable {
    case t0 = "0"
    case t09 = "9"
    case t10 = "10"
    case t11 = "11"
    case t12 = "12"
    case t13 = "13"
    case t14 = "14"
    case t15 = "15"
    case t16 = "16"
    case t17 = "17"
    case t18 = "18"
    case t19 = "19"
    case t20 = "20"
    case t21 = "21"
    case t22 = "22"
    case t23 = "23"
    case t24 = "24"
    case t25 = "25"
    case t26 = "26"
    case t27 = "27"
    case t28 = "28"
    case t29 = "29"
    case t30 = "30"
    case t31 = "31"
    case t32 = "32"
    case t33 = "33"
    case t34 = "34"
    case t35 = "35"
    case t36 = "36"
    case t37 = "37"
    case t38 = "38"
    case t39 = "39"
    case t40 = "40"
    case t41 = "41"
    case t42 = "42"
    case t43 = "43"
    case t44 = "44"
    case t45 = "45"
    case t46 = "46"
    case t47 = "47"
    case t48 = "48"
    case t49 = "49"
    case t50 = "50"
    case t51 = "51"
    case t52 = "52"
    case t53 = "53"
    case t54 = "54"
    case t55 = "55"
    case t56 = "56"
    case t57 = "57"
    case t58 = "58"
    case t59 = "59"
    case t60 = "60"
    case t61 = "61"
    case t62 = "62"
    case t63 = "63"
    case t64 = "64"
    case t65 = "65"
    case t66 = "66"
    case t67 = "67"
    case t68 = "68"
    case t69 = "69"
    case t70 = "70"
    case t71 = "71"
    case t72 = "72"
    case t73 = "73"
    case t74 = "74"
    case t75 = "75"
    case t76 = "76"
    case t77 = "77"
    case t78 = "78"
    case t79 = "79"
    case t80 = "80"
    case t81 = "81"
}

extension TotalNumber {
    
    var value:String {
        get{
            return self.rawValue
        }
    }
    
    var detail:String? {
        get{
            let totalData:[String:Any] = [:]
            return totalData[self.value] as? String
        }
    }
    
}
