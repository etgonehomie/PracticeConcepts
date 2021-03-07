//
//  MainCell.swift
//  PracticeConcepts
//
//  Created by Eric Tom on 3/6/21.
//

import UIKit

class MainCell: UITableViewCell {
    var labelView: UILabel!
    
    static let identifer = "mainCell"
    
    init(style: UITableViewCell.CellStyle, title: String) {
        super.init(style: style, reuseIdentifier: MainCell.identifer)
        setupViews()
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: MainCell.identifer)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainCell {
    private func setupViews() {
        labelView = UILabel()
        addSubview(labelView)
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.text = "Hello World"
        labelView.textColor = .red
        labelView.textAlignment = .center
        NSLayoutConstraint.activate([
            labelView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            labelView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            labelView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor),
            labelView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        
    }
}
