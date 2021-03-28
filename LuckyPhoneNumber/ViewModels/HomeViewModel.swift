//
//  HomeViewModel.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class HomeViewModel {
    
    var phoneNumber = BehaviorRelay<String?>(value: nil)
    
    var dataSource = BehaviorRelay<[HomeSectionModel]>(value: [])
    
    private let bag = DisposeBag()
    
    init() {
        
    }
    
    func isValidPhoneNumber() -> Bool {
        guard let phoneNumber = self.phoneNumber.value,
              phoneNumber.count == 10,
              phoneNumber.first == "0" else {
            return false
        }
        return true
    }
    
    func generateSection() {
        let total:[HomeSectionItem] = [.totalNumber(totalNumber: self.getTotalNumber())]
        var pairNumbers:[HomeSectionItem] = []
        let pairs = self.getPairNumbers()
        pairs.forEach { (pairNumber) in
            pairNumbers.append(.pairNumber(pairNumber: pairNumber))
        }
        self.dataSource.accept([.init(model: .totalNumberSection, items: total),
                                .init(model: .pairNumberSection, items: pairNumbers)])
    }
    
    func getTotalNumber() -> TotalNumber {
        guard let phoneNumber = self.phoneNumber.value else { return .t0 }
        let total = Array(phoneNumber).map({Int(String($0)) ?? 0}).reduce(.zero, +)
        return TotalNumber.init(rawValue: String(total)) ?? .t0
    }
    
    func getPairNumbers() -> [PairNumber] {
        guard let phoneNumber = self.phoneNumber.value else { return [] }
        let array = Array(phoneNumber).map({String($0)})
        var pairNumbers:[PairNumber] = []
        guard array.count > 9 else { return [] }
        for index in 0 ..< (array.count - 1) {
            if let pair = PairNumber(rawValue: array[index] + array[index + 1]) {
                pairNumbers.append(pair)
            }
        }
        return Array(pairNumbers.dropFirst(3))
    }
}
