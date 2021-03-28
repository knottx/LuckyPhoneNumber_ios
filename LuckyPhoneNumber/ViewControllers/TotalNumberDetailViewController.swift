//
//  TotalNumberDetailViewController.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit

class TotalNumberDetailViewController: BaseViewController {
    
    
    var viewModel:TotalNumberDetailViewModel!
    
    class func create(with totalNumber:TotalNumber) -> TotalNumberDetailViewController {
        return TotalNumberDetailViewController.newInstance(of: TotalNumberDetailViewController.self, storyboard: .main).then { (vc) in
            vc.viewModel = .init(totalNumber: totalNumber)
        }
    }
    
    func configureView() {
        //
    }
    
    func bindViewModel() {
        //
    }

}
