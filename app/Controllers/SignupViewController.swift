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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewSafeAreaInsetsDidChange() {
        view.backgroundColor = AppColors.strawberry
        view.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(ScreenDimensions.width)
            layout.height = YGValue(ScreenDimensions.height)
        }
        let backButton = UIButton(SVGNamed: "BackButton")
        let usernameTextField = UITextField()
        let emailTextField = UITextField()
        let passwordTextField = UITextField()
        let signupButton = UIButton()

        backButton.styleSignupBack(safeAreaTop: view.safeAreaInsets.top)
        usernameTextField.styleAuth()
        emailTextField.styleAuth()
        passwordTextField.styleAuth()
        signupButton.styleSignupButton()
        
        usernameTextField.placeholder = "Username"
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        signupButton.setTitle("Create an account", for: .normal)

        
        view.addSubview(backButton)
        view.addSubview(usernameTextField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signupButton)
        
        view.yoga.applyLayout(preservingOrigin: true)
        
        backButton.addTarget(self, action: #selector(backPressed(sender:)), for: .touchUpInside)
    }
    
    @objc func backPressed(sender: UIButton!) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
