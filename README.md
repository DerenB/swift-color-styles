# Swift Color Styles

- An iOS app for viewing different color options

# Remove Default Storyboard

- Delete Storyboard File: `Main.Storyboard`
- Remove reference to Main
  - In File: `Info.plist`
  - Search for "main", delete line
- Remove reference in Target
  - Main File > Targets > ProjectName > Info
  - Delete line `Main storyboard file base name`

# Set Up Views & Navigation

- Set up in the file `SceneDelegate.swift`
- Navigation set up by creating a Tab Bar
- View Controllers are added to the Tab Bar
- Tab Bar function called by the Scene function

### Create Tab Bar

- View Controller functions are added to the tab bar array
```
func createTabbar() -> UITabBarController {
  let tabBar = UITabBarController()
  UITabBar.appearance().tintColor = .systemRed
  tabBar.viewControllers = [ViewController1, ViewController2, etc]
        
  return tabBar
}
```

### Customize Tab Bar

```
func configureNavigationBar() {
  UINavigationBar.appearance().tintColor = .systemRed
}
```

### View Controller Function

- 1 function for every VC
```
func createSettingsVC() -> UINavigationController {
  let settingsVC = SettingsVC()      
  let iconImage = UIImage(systemName: "gear")      
  settingsVC.title = "Settings"      
  settingsVC.tabBarItem = UITabBarItem(title: "Settings", image: iconImage, tag: 2)      
  return UINavigationController(rootViewController: settingsVC)
}
```

### Set Up Scene Function

```
func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
  guard let windowScene = (scene as? UIWindowScene) else { return }       

  window = UIWindow(frame: windowScene.coordinateSpace.bounds)      

  window?.windowScene = windowScene
        
  window?.rootViewController = createTabbar()

  window?.makeKeyAndVisible()
        
  configureNavigationBar()
}
```








