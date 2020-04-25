//
//  BottomTabBar.swift
//  app
//
//  Created by Luhao Wang on 4/23/20.
//  Copyright © 2020 Foodie Inc. All rights reserved.
//

import UIKit

class BottomTabBar: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = UIColor(red: 125/255, green: 138/255, blue: 140/255, alpha: 1)
        setupTabBar()
        // Do any additional setup after loading the view.
    }
    
    func setupTabBar() {
        
        // Create Home Tab
        let homeController = UINavigationController(rootViewController: HomeTableViewController())
        homeController.tabBarItem.image = UIImage(named: "Home")
        homeController.tabBarItem.selectedImage = UIImage(named: "Home")
        // Create Friends Tab
        let friendsController = UINavigationController(rootViewController: FriendsTableViewController())
        friendsController.tabBarItem.image = UIImage(named: "Contacts")
        friendsController.tabBarItem.selectedImage = UIImage(named: "Contacts")
        // Create Restaurants Tab
        let restaurantController = UINavigationController(rootViewController: RestaurantsTableViewController())
        restaurantController.tabBarItem.image = UIImage(named: "Bookmarks")
        restaurantController.tabBarItem.selectedImage = UIImage(named: "Bookmarks")
        // Create MyProfile Tab
        let myprofileController = UINavigationController(rootViewController: MyProfileViewController())
        myprofileController.tabBarItem.image = UIImage(named: "Love")
        myprofileController.tabBarItem.selectedImage = UIImage(named: "Love")
        
        viewControllers = [homeController, friendsController, restaurantController, myprofileController]
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

extension UITabBarController {
    func createNavController(vc: UIViewController, selected: UIImage, unselected: UIImage) -> UINavigationController{
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselected
        navController.tabBarItem.selectedImage = selected
        return navController
    }
    func createTableNavController(tvc: UITableViewController, selected: UIImage, unselected: UIImage) -> UINavigationController{
        let tableViewController = tvc
        let navController = UINavigationController(rootViewController: tableViewController)
        navController.tabBarItem.image = unselected
        navController.tabBarItem.selectedImage = selected
        return navController
    }
}
