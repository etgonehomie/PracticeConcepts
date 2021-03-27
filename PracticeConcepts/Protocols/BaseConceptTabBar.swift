//
//  BaseConceptController.swift
//  PracticeConcepts
//
//  Created by Eric Tom on 3/6/21.
//

import UIKit

/**
 Defines the 2 view controllers needed for a given concept
 - parameter conceptViewController: VC that describes the concept details
 - parameter exampleViewController: VC that demonstrates the actual example of how the concept works
 - parameter setupTabBar(): Default setup of the tabs for the given concept demonstration
 */
protocol BaseConceptTabBar: UITabBarController {
    var conceptViewController: UIViewController { get }
    var exampleViewController: UIViewController { get }
    func setupTabBar()
}

extension BaseConceptTabBar {
    
    // TODO: Fix why the tab icons do not show up for the concept view controller. It might be because it is defined as a `ConceptExplanation` instead of a `UIViewController`
    func setupTabBar() {
        let tabItem1 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        let tabItem2 = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        conceptViewController.tabBarItem = tabItem1
        exampleViewController.tabBarItem = tabItem2
        viewControllers = [conceptViewController, exampleViewController]
    }
}
