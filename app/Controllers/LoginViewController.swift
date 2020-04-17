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
        view.backgroundColor = AppColors.hYellow
        view.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(ScreenDimensions.width)
            layout.height = YGValue(ScreenDimensions.height)
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
        self.backgroundColor = .lightGray
        self.configureLayout { (layout) in
            layout.isEnabled = true
            layout.marginLeft = YGValue(ScreenDimensions.width / 10)
            layout.marginRight = YGValue(ScreenDimensions.width / 10)
            layout.marginTop = 50
            layout.height = YGValue(ScreenDimensions.height / 17.5)
        }
        self.layer.cornerRadius = 3
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: ScreenDimensions.width / 30, height: self.frame.height))
        self.leftViewMode = .always
        self.rightViewMode = .always
    }
}
