//
//  BaseCell.swift
//  ToDoListAppUsingUICollectionView
//
//  Created by Nikos  on 27/10/2018.
//  Copyright © 2018 NAPPS. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        setupViews()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented.")
    }
    
    
    func setupViews() {
        
    }
}
