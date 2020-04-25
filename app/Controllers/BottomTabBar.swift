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
        setupTabBar()
        tabBar.barTintColor = UIColor.white
        
        // Do any additional setup after loading the view.
    }
    
    func setupTabBar() {
        let selectedItem = [NSAttributedString.Key.foregroundColor: UIColor.red]
        // Create Home Tab
        let homeController = UINavigationController(rootViewController: HomeTableViewController())
        homeController.title = "Home"
        homeController.tabBarItem.setTitleTextAttributes(selectedItem, for: .highlighted)
        homeController.tabBarItem.image = UIImage(systemName: "house")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        homeController.tabBarItem.selectedImage = UIImage(systemName: "house.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        // Create Friends Tab
        let friendsController = UINavigationController(rootViewController: FriendsTableViewController())
        friendsController.title = "Friends"
        friendsController.tabBarItem.setTitleTextAttributes(selectedItem, for: .highlighted)
        friendsController.tabBarItem.image = UIImage(systemName: "person.2")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        friendsController.tabBarItem.selectedImage = UIImage(systemName: "person.2.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        // Create Restaurants Tab
        let restaurantController = UINavigationController(rootViewController: RestaurantsTableViewController())
        restaurantController.title = "Restaurants"
        restaurantController.tabBarItem.setTitleTextAttributes(selectedItem, for: .highlighted)
        restaurantController.tabBarItem.image = UIImage(systemName: "bag")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        restaurantController.tabBarItem.selectedImage = UIImage(systemName: "bag.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        // Create MyProfile Tab
        let myprofileController = UINavigationController(rootViewController: MyProfileViewController())
        myprofileController.title = "My"
        myprofileController.tabBarItem.setTitleTextAttributes(selectedItem, for: .highlighted)
        myprofileController.tabBarItem.image = UIImage(systemName: "person")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        myprofileController.tabBarItem.selectedImage = UIImage(systemName: "person.fill")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        
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
