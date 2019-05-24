//
//  TaskHeader.swift
//  ToDoListAppUsingUICollectionView
//
//  Created by Nikos  on 27/10/2018.
//  Copyright © 2018 NAPPS. All rights reserved.
//

import UIKit

class TaskHeader: BaseCell {
    
    
    var viewController: ViewController?
    
    
    let taskNameTextField: UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "Enter task name"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    
    let addTaskButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("Add task", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    override func setupViews() {
        
        addSubview(taskNameTextField)
        addSubview(addTaskButton)
        
        addTaskButton.addTarget(self, action: #selector(addTask), for: .touchUpInside)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-[v1(80)]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": taskNameTextField, "v1": addTaskButton]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-24-[v0]-24-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": taskNameTextField]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[v0]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": addTaskButton]))
    }
    
    
    @objc func addTask() {
        
        viewController?.addNewTask(taskName: taskNameTextField.text!)
        
        taskNameTextField.text = ""
    }
}
