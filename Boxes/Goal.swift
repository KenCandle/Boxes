//
//  Goal.swift
//  Boxes
//
//  Created by Collin Howard on 1/14/18.
//  Copyright © 2018 collinhoward. All rights reserved.
//

import UIKit

class Goal {
    
    var x: CGFloat = 0
    var y: CGFloat = 0
    
    var isSafe: Bool = false
    
    static let width: CGFloat = 20
    static let height: CGFloat = 20
    
    var color: UIColor = UIColor(red: 0/255 , green: 79/255 , blue: 1/255 , alpha: 1)
    
    var borderColor: UIColor = UIColor.black
    var borderWidth: CGFloat = 0
    
    var view: UIView = UIView()
    
    func setup(stage: Stage) {
        
        self.color = darkColor
        
        self.x = stage.goalX
        self.y = stage.goalY
        
        self.view.frame.origin.x = self.x - (Goal.width / 2)
        self.view.frame.origin.y = self.y - (Goal.height / 2)
        
        self.view.frame.size.width = Goal.width
        self.view.frame.size.height = Goal.height
        
        self.view.layer.cornerRadius = 0
        self.view.backgroundColor = self.color
        
        self.view.layer.borderColor = self.borderColor.cgColor
        self.view.layer.borderWidth = self.borderWidth
    }
}
