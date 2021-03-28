//
//  BaseViewController.swift
//  LuckyPhoneNumber
//
//  Created by Visarut Tippun on 28/3/21.
//  Copyright © 2021 knottx. All rights reserved.
//

import UIKit
import Then

typealias BaseViewController = ViewController & ViewControllerProtocol

protocol ViewControllerProtocol {
    func configureView()
    func bindViewModel()
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let base = self as? ViewControllerProtocol {
            base.configureView()
            base.bindViewModel()
        }
        
    }
    
    func doneToolbar() -> UIToolbar {
        let toolbar = UIToolbar()
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didTapDoneToolbar))
        toolbar.items = [spacer, done]
        toolbar.isTranslucent = false
        toolbar.sizeToFit()
        return toolbar
    }
    
    @objc func didTapDoneToolbar() {
        self.view.endEditing(true)
    }

    

}
