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

    func textLimit(existingText: String?, newText: String, limit: Int) -> Bool {
        let text = existingText ?? ""
        let isAtLimit = text.count + newText.count <= limit
        return isAtLimit
    }

    func alertError(error:Error) {
        if let appError = error as? AppError {
            self.alert(title: appError.title, message: appError.message)
        }else{
            self.alert(title: "error_title".localized(), message: error.localizedDescription)
        }
    }
    
    func alert(title:String, message:String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "common_ok".localized(), style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
