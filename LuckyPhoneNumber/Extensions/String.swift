//
//  String.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import Foundation
import RxSwift

extension String {
    
    func toPhoneNumber() -> String {
        return self.format(mask: "###-#######")
    }
    
    func format(mask:String) -> String {
        let cleanText = self.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
        var result = ""
        var index = cleanText.startIndex
        for ch in mask where index < cleanText.endIndex {
            if ch == "#" {
                result.append(cleanText[index])
                index = cleanText.index(after: index)
            } else {
                result.append(ch)
            }
        }
        return result
    }
    
    func localized(_ bundle: Bundle? = nil) -> String {
        let value = NSLocalizedString(self, comment: "")
        if value != self || NSLocale.preferredLanguages.first == "en" {
            return value
        }
        // Fall back to en
        guard let path = Bundle.main.path(forResource: "en", ofType: "lproj"),
              let bundle = Bundle(path: path)
        else {
            return value
        }
        return NSLocalizedString(self, bundle: bundle, comment: "")
    }
}
