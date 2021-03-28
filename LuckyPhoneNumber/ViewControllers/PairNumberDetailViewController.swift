//
//  PairNumberDetailViewController.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

class PairNumberDetailViewController: BaseViewController {
    

    var viewModel:PairNumberDetailViewModel!
    
    class func create(with pairNumber:PairNumber) -> PairNumberDetailViewController {
        return PairNumberDetailViewController.newInstance(of: PairNumberDetailViewController.self, storyboard: .main).then { (vc) in
            vc.viewModel = .init(pairNumber: pairNumber)
        }
    }
    
    func configureView() {
        
    }
    
    func bindViewModel() {
        
    }

}
