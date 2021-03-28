//
//  HomeSectionModel.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import Foundation
import RxDataSources

typealias HomeSectionModel = SectionModel<HomeSection, HomeSectionItem>

enum HomeSection {
    case totalNumberSection
    case pairNumberSection
}

enum HomeSectionItem {
    case totalNumber(totalNumber: TotalNumber)
    case pairNumber(pairNumber: PairNumber)
}
