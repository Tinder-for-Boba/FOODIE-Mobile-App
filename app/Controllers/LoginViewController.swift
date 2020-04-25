//
//  LoginViewController.swift
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

    }
    
    override func viewSafeAreaInsetsDidChange() {
        view.backgroundColor = AppColors.strawberry
        view.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(ScreenDimensions.width)
            layout.height = YGValue(ScreenDimensions.height)
        }
        
        let foodieLogo = UIImageView(image: UIImage(named: "FoodieLogo"))
        let userTextField = UITextField()
        let passwordTextField = UITextField()
        let loginButtonsView = UIView()
        let loginButton = UIButton()
        let signupButton = UIButton()
        
        userTextField.placeholder = "Username"
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.yoga.marginTop = 40
        loginButton.setTitle("Login", for: .normal)
        signupButton.setTitle("Signup", for: .normal)

        foodieLogo.styleLoginLogo(safeAreaTop: view.safeAreaInsets.top)
        userTextField.styleAuth()
        passwordTextField.styleAuth()
        loginButtonsView.styleLoginButtons()
        loginButton.styleAuth()
        signupButton.styleAuth()

        view.addSubview(foodieLogo)
        view.addSubview(userTextField)
        view.addSubview(passwordTextField)
        loginButtonsView.addSubview(loginButton)
        loginButtonsView.addSubview(signupButton)
        view.addSubview(loginButtonsView)
        view.yoga.applyLayout(preservingOrigin: true)
        
        signupButton.addTarget(self, action: #selector(signupPressed(sender:)), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginPressed(sender:)), for: .touchUpInside)
    }
    
    @objc func signupPressed(sender: UIButton!) {
        let signupViewController = SignupViewController()
        signupViewController.modalPresentationStyle = .fullScreen
        self.present(signupViewController, animated: true, completion: nil)
    }
    
    @objc func loginPressed(sender: UIButton!) {
        //let restaurantTableViewCell = RestaurantTableViewCell()
        
        let preferencesTableViewController = BottomTabBar()
        let preferenceNavigator = UINavigationController(rootViewController: preferencesTableViewController)
        preferenceNavigator.modalPresentationStyle = .overFullScreen
        self.present(preferenceNavigator, animated: true, completion: nil)
    }
}
