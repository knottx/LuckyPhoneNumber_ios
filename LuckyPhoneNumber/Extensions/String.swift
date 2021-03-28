//
//  String.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import Foundation
import RxSwift

extension ObservableType where Element == String {
    func toPhoneNumber() -> Observable<Element> {
        return asObservable().flatMap { phoneNumber -> Observable<Element> in
          return Observable.just(phoneNumber.toPhoneNumber())
        }
    }
}

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
    
}
