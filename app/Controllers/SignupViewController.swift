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
import FirebaseAuth

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
        button.addTarget(self, action: #selector(signupPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var alertPopup: UIAlertController = {
        let alert = UIAlertController(title: "Signup Failed", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
        return alert
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
    
    @objc func signupPressed(sender: UIButton!) {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { authResult, error in
            if error == nil {
                self.dismiss(animated: true, completion: nil)
            } else {
                self.alertPopup.message = error?.localizedDescription
                self.present(self.alertPopup, animated: true, completion: nil)
            }
        }
    }

}
