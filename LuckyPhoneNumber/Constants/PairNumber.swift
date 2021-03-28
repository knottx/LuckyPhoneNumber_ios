//
//  PairNumber.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import Foundation

enum PairNumber: String, Codable {
    case n00 = "00"
    case n01 = "01"
    case n02 = "02"
    case n03 = "03"
    case n04 = "04"
    case n05 = "05"
    case n06 = "06"
    case n07 = "07"
    case n08 = "08"
    case n09 = "09"
    case n10 = "10"
    case n11 = "11"
    case n12 = "12"
    case n13 = "13"
    case n14 = "14"
    case n15 = "15"
    case n16 = "16"
    case n17 = "17"
    case n18 = "18"
    case n19 = "19"
    case n20 = "20"
    case n21 = "21"
    case n22 = "22"
    case n23 = "23"
    case n24 = "24"
    case n25 = "25"
    case n26 = "26"
    case n27 = "27"
    case n28 = "28"
    case n29 = "29"
    case n30 = "30"
    case n31 = "31"
    case n32 = "32"
    case n33 = "33"
    case n34 = "34"
    case n35 = "35"
    case n36 = "36"
    case n37 = "37"
    case n38 = "38"
    case n39 = "39"
    case n40 = "40"
    case n41 = "41"
    case n42 = "42"
    case n43 = "43"
    case n44 = "44"
    case n45 = "45"
    case n46 = "46"
    case n47 = "47"
    case n48 = "48"
    case n49 = "49"
    case n50 = "50"
    case n51 = "51"
    case n52 = "52"
    case n53 = "53"
    case n54 = "54"
    case n55 = "55"
    case n56 = "56"
    case n57 = "57"
    case n58 = "58"
    case n59 = "59"
    case n60 = "60"
    case n61 = "61"
    case n62 = "62"
    case n63 = "63"
    case n64 = "64"
    case n65 = "65"
    case n66 = "66"
    case n67 = "67"
    case n68 = "68"
    case n69 = "69"
    case n70 = "70"
    case n71 = "71"
    case n72 = "72"
    case n73 = "73"
    case n74 = "74"
    case n75 = "75"
    case n76 = "76"
    case n77 = "77"
    case n78 = "78"
    case n79 = "79"
    case n80 = "80"
    case n81 = "81"
    case n82 = "82"
    case n83 = "83"
    case n84 = "84"
    case n85 = "85"
    case n86 = "86"
    case n87 = "87"
    case n88 = "88"
    case n89 = "89"
    case n90 = "90"
    case n91 = "91"
    case n92 = "92"
    case n93 = "93"
    case n94 = "94"
    case n95 = "95"
    case n96 = "96"
    case n97 = "97"
    case n98 = "98"
    case n99 = "99"
}

extension PairNumber {
    
    var value:String {
        return self.rawValue
    }
    
    var type:PairNumberType {
        switch self {
        case .n00, .n01, .n02, .n03, .n04, .n05, .n06, .n07, .n08, .n09,
             .n10, .n11, .n12, .n13, .n17, .n18,
             .n20, .n21, .n27,
             .n30, .n31, .n34, .n37, .n38,
             .n40, .n43, .n48,
             .n50, .n57, .n58,
             .n60, .n67, .n68,
             .n70, .n71, .n72, .n73, .n75, .n76, .n77,
             .n80, .n81, .n83, .n84, .n85, .n86, .n88,
             .n90:
            return .danger
        case .n25, .n33, .n47, .n52, .n74:
            return .fight
        default:
            return .good
            
        }
    }
    
    var detail:String? {
        let totalData:[String:Any] = [:]
        return totalData[self.value] as? String
    }
    
}
