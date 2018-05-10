//
//  TimerView.swift
//  Boxes
//
//  Created by Collin Howard on 5/9/18.
//  Copyright © 2018 collinhoward. All rights reserved.
//

import UIKit

class TimerView {
    
    var x: CGFloat = 0
    var y: CGFloat = 0
    
    var width: CGFloat = 0
    var height: CGFloat = 0
    
    var frontColor: UIColor = UIColor.black
    var backColor: UIColor = UIColor.black

    var frontView: UIView = UIView()
    var backView: UIView = UIView()
    
    private func setupViews() {
        
        self.frontView.frame.origin.x = self.x - (self.width / 2)
        self.frontView.frame.origin.y = self.y - (self.height / 2)
        
        self.frontView.frame.size.width = self.width
        self.frontView.frame.size.height = self.height
        
        self.frontView.backgroundColor = self.frontColor
        
        self.backView.frame.origin.x = self.frontView.frame.origin.x
        self.backView.frame.origin.y = self.frontView.frame.origin.y
        
        self.backView.frame.size.width = self.frontView.frame.size.width
        self.backView.frame.size.height = self.frontView.frame.size.height
        
        self.backView.backgroundColor = self.backColor
    }
    
    func setXY(x: CGFloat, y: CGFloat) {
        
        self.x = x
        self.y = y
        
        setupViews()
    }
    
    func setWidthHeight(width: CGFloat, height: CGFloat) {
        
        self.width = width
        self.height = height
        
        setupViews()
    }
    
    func setColors(frontColor: UIColor, backColor: UIColor) {
        
        self.frontColor = frontColor
        self.backColor = backColor
        
        setupViews()
    }
    
    func setProgress(progress: CGFloat) {
        
        self.frontView.frame.origin.x = self.backView.frame.origin.x
        self.frontView.frame.origin.y = self.backView.frame.origin.y
        
        self.frontView.frame.size.width = self.width * progress
    }
}
