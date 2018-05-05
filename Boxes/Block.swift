//
//  Block.swift
//  Boxes
//
//  Created by Collin Howard on 1/14/18.
//  Copyright © 2018 collinhoward. All rights reserved.
//

import UIKit

class Block {
    
    var x: CGFloat
    var y: CGFloat
    
    var width: CGFloat
    var height: CGFloat
    
    var xPoints = [CGFloat]()
    var yPoints = [CGFloat]()
    
    var speed: CGFloat
    
    var isLoop: Bool
    
    var widths = [CGFloat]()
    var heights = [CGFloat]()
    
    var sizeSpeed: CGFloat
    
    var isSizeLoop: Bool
    
    var teleportInterval: CGFloat
    
    var isCircle: Bool
    
    var canJump: Bool
    
    var locationPos: Int
    var sizePos: Int

    var goBack: Bool
    var goBack2: Bool
    
    var color: UIColor = UIColor.black

    var borderColor: UIColor = UIColor.black
    var borderWidth: CGFloat = 0
    
    var view: UIView = UIView()
    
    init(xPoints: [CGFloat], yPoints: [CGFloat], speed: CGFloat, isLoop: Bool, widths: [CGFloat], heights: [CGFloat], sizeSpeed: CGFloat, isSizeLoop: Bool, teleportInterval: CGFloat, isCircle: Bool, canJump: Bool) {
        
        self.x = xPoints[0]
        self.y = yPoints[0]
        
        self.xPoints = xPoints
        self.yPoints = yPoints

        self.speed = speed
        
        self.isLoop = isLoop
        
        self.width = widths[0]
        self.height = heights[0]
        
        self.widths = widths
        self.heights = heights
        
        self.sizeSpeed = sizeSpeed
        
        self.isSizeLoop = isSizeLoop
        
        self.teleportInterval = teleportInterval
        
        self.canJump = canJump
        
        self.isCircle = isCircle
        
        self.locationPos = 0
        self.sizePos = 0

        self.goBack = false
        self.goBack2 = false
        
        self.view.frame.origin.x = self.x - (self.width / 2)
        self.view.frame.origin.y = self.y - (self.height / 2)
        
        self.view.frame.size.width = self.width
        self.view.frame.size.height = self.height
        
        if self.isCircle == true {
            self.view.layer.cornerRadius = self.width / 2
        }
        
        self.view.backgroundColor = self.color
        
        self.view.layer.borderColor = self.borderColor.cgColor
        self.view.layer.borderWidth = self.borderWidth
    }
    
    func move() {
        
        if distance(x1: self.x, y1: self.y, x2: self.xPoints[locationPos], y2: self.yPoints[locationPos]) <= finishRange {
            
            self.x = self.xPoints[locationPos]
            self.y = self.yPoints[locationPos]
            
            if locationPos >= xPoints.count - 1 {
                
                if canJump == true {
                    
                    locationPos = 1
                    
                    self.x = self.xPoints[0]
                    self.y = self.yPoints[0]
                    
                } else if isLoop == true {
                    
                    locationPos = 0
                    
                } else {
                    
                    locationPos -= 1
                    goBack = true
                }
                
            } else if locationPos <= 0 && isLoop == false {
                
                locationPos += 1
                goBack = false

            } else {
                
                if goBack == true {
                    locationPos -= 1
                } else {
                    locationPos += 1
                }
            }
            
        }
        
        let dist = distance(x1: self.x, y1: self.y, x2: self.xPoints[locationPos], y2: self.yPoints[locationPos])
        
        if dist != 0 {
            
            let multiplier = self.speed / dist
            
            let xSpeed = (self.xPoints[locationPos] - self.x) * multiplier
            let ySpeed = (self.yPoints[locationPos] - self.y) * multiplier
            
            self.x += xSpeed * speedChange
            self.y += ySpeed * speedChange
        }
        
        if distance(x1: self.width, y1: self.height, x2: self.widths[sizePos], y2: self.heights[sizePos]) <= finishRange {
            
            self.width = self.widths[sizePos]
            self.height = self.heights[sizePos]
            
            if sizePos >= widths.count - 1 {
                
                if isSizeLoop == true {
                    
                    sizePos = 0
                    
                } else {
                    
                    sizePos -= 1
                    goBack2 = true
                }
                
            } else if sizePos <= 0 && isSizeLoop == false {
                
                sizePos += 1
                goBack2 = false
                
            } else {
                
                if goBack2 == true {
                    sizePos -= 1
                } else {
                    sizePos += 1
                }
            }
            
        }
        
        let dist2 = distance(x1: self.width, y1: self.height, x2: self.widths[sizePos], y2: self.heights[sizePos])
        
        if dist2 != 0 {
            
            let multiplier = self.sizeSpeed / dist2
            
            let widthSpeed = (self.widths[sizePos] - self.width) * multiplier
            let heightSpeed = (self.heights[sizePos] - self.height) * multiplier
            
            self.width += widthSpeed * speedChange
            self.height += heightSpeed * speedChange
        }
        
        self.view.frame.origin.x = self.x - (self.width / 2)
        self.view.frame.origin.y = self.y - (self.height / 2)
        
        self.view.frame.size.width = self.width
        self.view.frame.size.height = self.height
        
        if self.isCircle == true {
            self.view.layer.cornerRadius = self.width / 2
        }
    }
    
    func didHitPlayer() -> Bool {
        
        if self.isCircle == true {
            
            if player.isPartSafe == true {
                
                if distance(x1: self.x, y1: self.y, x2: player.tempX, y2: player.tempY) <= player.tempRadius + (self.width / 2) || distance(x1: self.x, y1: self.y, x2: player.tempX2, y2: player.tempY2) <= player.tempRadius2 + (self.width / 2) {
                    return true
                }
                
            } else {
                
                if distance(x1: self.x, y1: self.y, x2: player.x, y2: player.y) <= Player.radius + (self.width / 2) {
                    return true
                }
            }
            
        } else {
            
            if player.isPartSafe == true {
                
                if (player.tempX + player.tempRadius > self.x - (self.width / 2) && player.tempX - player.tempRadius < self.x + (self.width / 2) && player.tempY + player.tempRadius > self.y - (self.height / 2) && player.tempY - player.tempRadius < self.y + (self.height / 2)) || (player.tempX2 + player.tempRadius2 > self.x - (self.width / 2) && player.tempX2 - player.tempRadius2 < self.x + (self.width / 2) && player.tempY2 + player.tempRadius2 > self.y - (self.height / 2) && player.tempY2 - player.tempRadius2 < self.y + (self.height / 2)) {
                    return true
                }
                
            } else {
                
                if player.x + Player.radius > self.x - (self.width / 2) && player.x - Player.radius < self.x + (self.width / 2) && player.y + Player.radius > self.y - (self.height / 2) && player.y - Player.radius < self.y + (self.height / 2) {
                    return true
                }
                
            }
        }

        return false
    }
}
