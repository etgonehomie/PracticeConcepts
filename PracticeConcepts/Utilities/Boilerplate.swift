//
//  Boilerplate.swift
//  PracticeConcepts
//
//  Created by Eric Tom on 3/6/21.
//

import UIKit

class Boilerplate {
    /**
     Programatically creates a base ViewController embedded in a NavigationController to replace the Main.Storyboard.
     Use this to define the `var window` in the `func (_ scene: UIScene)` inside of `SceneDelegate.swift`
     - parameter scene: the scene to create the main ViewController inside of. Just pass in the `scene` from the function call
     - parameter controller: the ViewController you want to be as the base VIewController that is embedded within a NavigationController
     - return UIWindow?: If successfully, it will return the main UIWindow to use for your inputted scene
     */
    static func createMainNavigationWindowScene(for scene: UIScene, with controller: UIViewController) -> UIWindow? {
        // Force the scene to be a window scene and add it to the window
        guard let windowScene: UIWindowScene = scene as? UIWindowScene else { return nil }
        let window = UIWindow(windowScene: windowScene)
        
        // Set the view controller to the scene and make it visible
        window.rootViewController = UINavigationController(rootViewController: controller)
        window.rootViewController?.title = "Concept Navigation"
        window.makeKeyAndVisible()
        return window
    }
}
