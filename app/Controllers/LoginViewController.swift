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
        view.backgroundColor = AppColors.sBrown
        view.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(ScreenDimensions.width)
            layout.height = YGValue(ScreenDimensions.height)
        }
        
        let userTextField = UITextField()
        let passwordTextField = UITextField()
        let loginButtonsView = UIView()
        let loginButton = UIButton()
        let signupButton = UIButton()
        
        loginButton.setTitle("Login", for: .normal)
        signupButton.setTitle("Signup", for: .normal)

        userTextField.styleAuth()
        passwordTextField.styleAuth()
        loginButtonsView.styleLoginButtons()
        loginButton.styleAuth()
        signupButton.styleAuth()

        view.addSubview(userTextField)
        view.addSubview(passwordTextField)
        loginButtonsView.addSubview(loginButton)
        loginButtonsView.addSubview(signupButton)
        view.addSubview(loginButtonsView)
        view.yoga.applyLayout(preservingOrigin: true)
    }
}
