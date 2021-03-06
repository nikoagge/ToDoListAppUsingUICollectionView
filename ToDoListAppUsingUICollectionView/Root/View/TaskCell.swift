//
//  TaskCell.swift
//  ToDoListAppUsingUICollectionView
//
//  Created by Nikos  on 26/10/2018.
//  Copyright © 2018 NAPPS. All rights reserved.
//

import UIKit


class TaskCell: BaseCell {
    
    
    let nameLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Simple task"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    override func setupViews() {
        
        addSubview(nameLabel)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[v0]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": nameLabel]))
    }
}
