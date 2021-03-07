//
//  BaseConceptController.swift
//  PracticeConcepts
//
//  Created by Eric Tom on 3/6/21.
//

import UIKit

protocol BaseConceptTabBar: UITabBarController {
    var explanationViewController: ConceptExplanation { get }
    var conceptViewController: UIViewController { get }
    func setupTabBar()
}

extension BaseConceptTabBar {
    func setupTabBar() {
        let tabItem1 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        let tabItem2 = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        explanationViewController.tabBarItem = tabItem1
        conceptViewController.tabBarItem = tabItem2
        viewControllers = [explanationViewController, conceptViewController]
    }
}

//class BaseConceptTabBarController: UITabBarController {
//    let explanationViewController: UIViewController
//    let conceptViewController: UIViewController
//
//    init(explanationViewController: UIViewController, conceptViewController: UIViewController) {
//        self.explanationViewController = explanationViewController
//        self.conceptViewController = conceptViewController
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        delegate = self
//
//        let tabItem1 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
//        let tabItem2 = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
//        explanationViewController.tabBarItem = tabItem1
//        conceptViewController.tabBarItem = tabItem2
//
//        viewControllers = [explanationViewController, conceptViewController]
//    }
//}

extension BaseConceptTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("selected \(viewController.title)")
    }
}
