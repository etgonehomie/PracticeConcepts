//
//  DelegatePatternViewController.swift
//  PracticeConcepts
//
//  Created by Eric Tom on 3/6/21.
//

import UIKit

class DelegatePatternController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        view.backgroundColor = .gray
    }
}

extension DelegatePatternController: BaseConceptTabBar {
    var explanationViewController: UIViewController { ExplanationViewController() }

    var conceptViewController: UIViewController { DelegateViewController() }
}


