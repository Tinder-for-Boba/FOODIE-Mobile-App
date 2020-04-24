//
//  BottomTabBar.swift
//  app
//
//  Created by Luhao Wang on 4/23/20.
//  Copyright © 2020 Foodie Inc. All rights reserved.
//

import UIKit

class BottomTabBar: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let item1 = HomeTableViewController()
        let icon1 = UITabBarItem(title: "Home", image: UIImage(named: "Home"), tag: 1)
        let item2 = FriendsTableViewController()
        let icon2 = UITabBarItem(title: "Friends", image: UIImage(named: "Contacts"), tag: 2)
        let item3 = RestaurantsTableViewController()
        let icon3 = UITabBarItem(title: "Restaurants", image: UIImage(named: "Bookmarks"), tag: 1)
        let item4 = MyProfileViewController()
        let icon4 = UITabBarItem(title: "MyProfile", image: UIImage(named: "Love"), tag: 1)
        let controllers = [item1, item2, item3, item4]
        self.viewControllers = controllers
        self.selectedIndex = 0
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title ?? "") ?")
        return true;
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
