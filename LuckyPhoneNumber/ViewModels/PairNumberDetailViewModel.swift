//
//  PairNumberDetailViewModel.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class PairNumberDetailViewModel {
    
    var pairNumber = BehaviorRelay<PairNumber?>(value: nil)
    
    init(pairNumber: PairNumber) {
        self.pairNumber.accept(pairNumber)
    }
}
