//
//  ExplanationViewController.swift
//  PracticeConcepts
//
//  Created by Eric Tom on 3/6/21.
//

import UIKit

protocol ConceptExplanation: UIViewController {
    var title: String { get }
    var explanation: String { get }
}

class ExplanationViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Explanation View Controller"
    }
}
