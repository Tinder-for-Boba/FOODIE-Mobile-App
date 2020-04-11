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
        
        let screenWidth = self.view.bounds.size.width
        let screenHeight = self.view.bounds.size.height
        
        view.configureLayout { (layout) in
          layout.isEnabled = true
          layout.width = YGValue(screenWidth)
          layout.height = YGValue(screenHeight)
        }
        
        let accountTextField: UITextField = UITextField()
        accountTextField.backgroundColor = .gray
        accountTextField.configureLayout { (layout) in
            layout.isEnabled = true
            layout.marginLeft = YGValue(screenWidth / 10)
            layout.marginRight = YGValue(screenWidth / 10)
            layout.marginTop = 200
            layout.height = YGValue(screenHeight / 15)
            layout.borderWidth = 1
        }
        accountTextField.layer.cornerRadius = 3
        
        view.addSubview(accountTextField)
        view.yoga.applyLayout(preservingOrigin: true)
    }


}

