//
//  ConceptViewController.swift
//  PracticeConcepts
//
//  Created by Eric Tom on 3/6/21.
//

import UIKit

class ConceptViewController: UIViewController {
    let concept: Concept
    let purposeLabel = UILabel()
    
    init(concept: Concept) {
        self.concept = concept
        super.init(nibName: nil, bundle: nil)
    }
    
    // TODO - how to not default concept to .delegate
    required init?(coder: NSCoder) {
        concept = .observer
        super.init(coder: coder)
        print("error")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        setupViews()
    }
    
    private func setupViews() {
        self.title = "this is the title"
        navigationController?.title = "this is the nav title"
        purposeLabel.backgroundColor = .gray
        purposeLabel.text = concept.purpose
        purposeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(purposeLabel)
        NSLayoutConstraint.activate([
            purposeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            purposeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
