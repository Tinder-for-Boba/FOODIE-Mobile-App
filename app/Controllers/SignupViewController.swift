//
//  SignupViewController.swift
//  app
//
//  Created by Paul Pan on 20/4/17.
//  Copyright © 2020 Foodie Inc. All rights reserved.
//

import UIKit
import YogaKit
import SwiftSVG

class SignupViewController: UIViewController {
    
    lazy var backButton: UIButton = {
        let button = UIButton(SVGNamed: "BackButton")
        button.styleSignupBack(safeAreaTop: view.safeAreaInsets.top)
        button.addTarget(self, action: #selector(backPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var emailTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Email"
        textfield.styleAuth()
        return textfield
    }()
    
    lazy var passwordTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Password"
        textfield.isSecureTextEntry = true
        textfield.styleAuth()
        return textfield
    }()
    
    lazy var signupButton: UIButton = {
        let button = UIButton()
        button.styleSignupButton()
        button.setTitle("Create an account", for: .normal)
        return button
    }()

    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        hideKeyboardWhenTappedAround()
        styleAuthViewController()
        addSubviewsAndEnableStyle()
    }
    
    func addSubviewsAndEnableStyle() {
        view.addSubview(backButton)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signupButton)
        view.yoga.applyLayout(preservingOrigin: true)
    }
    
    @objc func backPressed(sender: UIButton!) {
        dismiss(animated: true, completion: nil)
    }

}
