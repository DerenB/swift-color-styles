//
//  SceneDelegate.swift
//  AppColorStyles
//
//  Created by Deren Bozer on 7/7/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        /// Create Window Scene
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        /// Initialize UI Window
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        window?.windowScene = windowScene
        
        /// Top Navigation Bar settings
        configureNavigationBar()
        
        /// Set the root view controller
        window?.rootViewController = createTabBar()
        
        /// Set Root View Controller
        window?.makeKeyAndVisible()
    }
    
    
    /// Create Color VC
    func createColorsVC() -> UINavigationController {
        /// Create instance of VC
        let colorsVC = ColorsVC()
        
        /// Set Icon string name
        let iconImage = UIImage(systemName: "paintpalette.fill")
        
        /// Set Navigation Title
        colorsVC.title = "Colors"
        
        /// Create the tab bar item
        /// Tag is the appearance order left to right
        colorsVC.tabBarItem = UITabBarItem(title: "Colors", image: iconImage, tag: 0)
        
        return UINavigationController(rootViewController: colorsVC)
    }
    
    
    /// Create Fonts VC
    func createFontsVC() -> UINavigationController {
        /// Create instance of VC
        let fontsVC = FontsVC()
        
        /// Set Icon string name
        let iconImage = UIImage(systemName: "f.circle.fill")
        
        /// Set Navigation Titles
        fontsVC.title = "Fonts"
        
        /// Create the tab bar item
        /// Tag is the appearance order left to right
        fontsVC.tabBarItem = UITabBarItem(title: "Fonts", image: iconImage, tag: 0)
        
        return UINavigationController(rootViewController: fontsVC)
    }
    
    
    /// Function for creating the Tab Bar
    func createTabBar() -> UITabBarController {
        /// Create the Tab Bar
        let tabBar = UITabBarController()
        
        /// Set the Tab Bar color
        UITabBar.appearance().tintColor = .white
        
        /// Set Tab Bar to solid black
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = .black
        
        /// Add the Tabs to the Tab Bar
        tabBar.viewControllers = [createColorsVC(), createFontsVC()]
        
        return tabBar
    }
    
    
    /// Customize Navigation Bar
    func configureNavigationBar() {
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

