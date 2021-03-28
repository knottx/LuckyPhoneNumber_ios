//
//  TotalNumberDetailViewModel.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class TotalNumberDetailViewModel {
    
    var totalNumber = BehaviorRelay<TotalNumber?>(value: nil)
    
    init(totalNumber: TotalNumber) {
        self.totalNumber.accept(totalNumber)
    }
}
