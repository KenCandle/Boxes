//
//  Player.swift
//  Boxes
//
//  Created by Collin Howard on 1/14/18.
//  Copyright © 2018 collinhoward. All rights reserved.
//

import UIKit

class Player {
    
    var x: CGFloat = 0
    var y: CGFloat = 0
    
    var isSafe: Bool = false
    var isPartSafe: Bool = false
    
    var tempX: CGFloat = 0
    var tempY: CGFloat = 0
    
    var tempRadius: CGFloat = 0
    
    var tempX2: CGFloat = 0
    var tempY2: CGFloat = 0
    
    var tempRadius2: CGFloat = 0

    static let radius: CGFloat = 8
        
    var color: UIColor = UIColor(red: 1/255 , green: 190/255 , blue: 2/255 , alpha: 1)

    var borderColor: UIColor = UIColor.black
    var borderWidth: CGFloat = 0
    
    var view: UIView = UIView()
    
//    var view2: UIView = UIView()
//    var view3: UIView = UIView()

    func setup(stage: Stage) {
        
        self.color = lightColor
        
        self.x = stage.playerX
        self.y = stage.playerY
        
        self.view.frame.origin.x = self.x - Player.radius
        self.view.frame.origin.y = self.y - Player.radius
        
        self.view.frame.size.width = Player.radius * 2
        self.view.frame.size.height = Player.radius * 2
        
        self.view.layer.cornerRadius = Player.radius
        self.view.backgroundColor = self.color
        
        self.view.layer.borderColor = self.borderColor.cgColor
        self.view.layer.borderWidth = self.borderWidth
    }
    
    func setXY(x: CGFloat, y: CGFloat) {
        
        self.x = x
        self.y = y
        
        self.view.frame.origin.x = self.x - Player.radius
        self.view.frame.origin.y = self.y - Player.radius
    }
    
    func didHitGoal() -> Bool {
        
        if distance(x1: goal.x, y1: goal.y, x2: player.x, y2: player.y) <= Player.radius + (Goal.width / 2) {
            return true
        }
        
        return false
    }

}
