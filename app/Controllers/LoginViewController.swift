//
//  ViewController.swift
//  app
//
//  Created by Paul Pan on 20/4/11.
//  Copyright © 2020 Foodie Inc. All rights reserved.
//

import UIKit
import YogaKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(ScreenConstants.width)
            layout.height = YGValue(ScreenConstants.height)
        }
        
        let userTextField = UITextField()
        let passwordTextField = UITextField()

        userTextField.styleLogin()
        passwordTextField.styleLogin()

        view.addSubview(userTextField)
        view.addSubview(passwordTextField)
        view.yoga.applyLayout(preservingOrigin: true)
    }
}

extension UITextField {
    func styleLogin() {
        self.backgroundColor = .gray
        self.configureLayout { (layout) in
            layout.isEnabled = true
            layout.marginLeft = YGValue(ScreenConstants.width / 10)
            layout.marginRight = YGValue(ScreenConstants.width / 10)
            layout.marginTop = 50
            layout.height = YGValue(ScreenConstants.height / 15)
            layout.borderWidth = 1
        }
        self.layer.cornerRadius = 3
    }
}
