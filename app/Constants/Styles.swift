//
//  Styles.swift
//  app
//
//  Created by Paul Pan on 20/4/17.
//  Copyright © 2020 Foodie Inc. All rights reserved.
//

import UIKit
import YogaKit

extension UIImageView {
    func styleLoginLogo(safeAreaTop: CGFloat) {
        self.configureLayout { (layout) in
            layout.isEnabled = true
            layout.marginTop = YGValue(safeAreaTop)
            layout.height = YGValue(ScreenDimensions.height / 3)
            layout.width = YGValue(ScreenDimensions.width)
        }
        self.contentMode = .scaleAspectFill
    }
}

extension UITextField {
    func styleAuth() {
        self.backgroundColor = AppColors.hYellow
        self.configureLayout { (layout) in
            layout.isEnabled = true
            layout.marginLeft = YGValue(ScreenDimensions.width / 10)
            layout.marginRight = YGValue(ScreenDimensions.width / 10)
            layout.height = YGValue(ScreenDimensions.height / 17.5)
        }
        self.layer.cornerRadius = 3
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: ScreenDimensions.width / 40, height: self.frame.height))
        self.leftViewMode = .always
        self.rightViewMode = .always
    }
}

extension UIView {
    func styleLoginButtons() {
        self.configureLayout{ (layout) in
            layout.isEnabled = true
            layout.marginTop = 40
            layout.flexDirection = .row
            layout.justifyContent = .spaceBetween
            layout.paddingLeft = YGValue(ScreenDimensions.width / 10)
            layout.paddingRight = YGValue(ScreenDimensions.width / 10)
        }
    }
}

extension UIButton {
    func styleAuth() {
        self.backgroundColor = AppColors.jIndigo
        self.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(ScreenDimensions.width / 4)
            layout.height = YGValue(ScreenDimensions.height / 17.5)
        }
        self.layer.cornerRadius = 3
    }
}

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 6 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
                    g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
                    b = CGFloat(hexNumber & 0x0000ff) / 255
                    self.init(red: r, green: g, blue: b, alpha: 1.0)
                    return
                }
            }
        }

        return nil
    }
}
