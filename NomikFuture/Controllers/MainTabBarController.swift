//
//  MainTabBarController.swift
//  NomikFuture
//
//  Created by Pinocchio on 2024/12/19.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = HomeViewController()
        let vc2 = FavoriteViewController()
        let vc3 = AnalyzeViewController()
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        tabBar.tintColor = .systemBackground
        
        nav1.tabBarItem.image = UIImage(systemName: "banknote")
        nav2.tabBarItem.image = UIImage(systemName: "menucard")
        nav3.tabBarItem.image = UIImage(systemName: "macpro.gen3")
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3], animated: true)
        
    }
}
