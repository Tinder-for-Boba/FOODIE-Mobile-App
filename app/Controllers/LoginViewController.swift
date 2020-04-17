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

        userTextField.styleAuth()
        passwordTextField.styleAuth()

        view.addSubview(userTextField)
        view.addSubview(passwordTextField)
        view.yoga.applyLayout(preservingOrigin: true)
    }
}
