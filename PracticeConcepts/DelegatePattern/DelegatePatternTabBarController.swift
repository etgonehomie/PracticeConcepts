//
//  DelegatePatternViewController.swift
//  PracticeConcepts
//
//  Created by Eric Tom on 3/6/21.
//

import UIKit

class DelegatePatternController: UITabBarController, BaseConceptTabBar {
    
    // MARK: - BaseConceptTabBar Protocol
    var conceptViewController: UIViewController = ConceptViewController(concept: .delegate)
    var exampleViewController: UIViewController = DelegateViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
}

