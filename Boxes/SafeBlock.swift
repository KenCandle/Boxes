//
//  SafeBlock.swift
//  Boxes
//
//  Created by Collin Howard on 1/21/18.
//  Copyright © 2018 collinhoward. All rights reserved.
//

import UIKit

class SafeBlock {
    
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
    
    var color: UIColor = UIColor.white.withAlphaComponent(0.275)
    
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
            if distance(x1: self.x, y1: self.y, x2: player.x, y2: player.y) <= (self.width / 2) - Player.radius {
                return true
            }
        } else {
            if player.x - Player.radius > self.x - (self.width / 2) && player.x + Player.radius < self.x + (self.width / 2) && player.y - Player.radius > self.y - (self.height / 2) && player.y + Player.radius < self.y + (self.height / 2) {
                return true
            }
        }
                
        if self.isCircle == true {
            
            if distance(x1: self.x, y1: self.y, x2: player.x, y2: player.y) <= Player.radius + (self.width / 2) {
                
                player.isPartSafe = true
                
                player.tempRadius = (Player.radius - ((self.width / 2) - distance(x1: self.x, y1: self.y, x2: player.x, y2: player.y))) / 2
                
                var slope: CGFloat = 0
                
                if player.x - self.x == 0 {
                    slope = 0
                } else {
                    slope = (player.y - self.y) / (player.x - self.x)
                }

                let newDist = (self.width / 2) + player.tempRadius
                let tempX = sqrt((newDist * newDist) / ((slope * slope) + 1))
                
                if player.x < self.x {
                    
                    player.tempX = self.x - tempX
                    player.tempY = self.y - (tempX * slope)
                    
                } else {
                    
                    player.tempX = tempX + self.x
                    player.tempY = (tempX * slope) + self.y
                }
                
                player.tempX2 = player.tempX
                player.tempY2 = player.tempY
                
                player.tempRadius2 = player.tempRadius
                
//                print(player.tempX)
//                print(player.tempY)
//                print()
//
//                player.view2.frame.origin.x = player.tempX - player.tempRadius
//                player.view2.frame.origin.y = player.tempY - player.tempRadius
//
//                player.view2.frame.size.width = player.tempRadius * 2
//                player.view2.frame.size.height = player.tempRadius * 2
//
//                player.view2.layer.cornerRadius = player.tempRadius
//                player.view2.backgroundColor = UIColor.green
//
//                player.view2.layer.borderWidth = 0
//
//                player.view3.frame.origin.x = player.tempX2 - player.tempRadius2
//                player.view3.frame.origin.y = player.tempY2 - player.tempRadius2
//
//                player.view3.frame.size.width = player.tempRadius2 * 2
//                player.view3.frame.size.height = player.tempRadius2 * 2
//
//                player.view3.layer.cornerRadius = player.tempRadius2
//                player.view3.backgroundColor = UIColor.blue
//
//                player.view3.layer.borderWidth = 0
            }
            
        } else if player.x + Player.radius > self.x - (self.width / 2) && player.x - Player.radius < self.x + (self.width / 2)  && player.y + Player.radius > self.y - (self.height / 2) && player.y - Player.radius < self.y + (self.height / 2) {
            
            player.isPartSafe = true
            
            if player.y - Player.radius > self.y - (self.height / 2) && player.y + Player.radius < self.y + (self.height / 2) {
                
                player.tempY = player.y

                if player.x < self.x {
                    
                    player.tempRadius = ((self.x - width / 2) - (player.x - Player.radius)) / 2
                    
                    player.tempX = ((player.x - Player.radius) + (self.x - width / 2)) / 2
                    
                } else {
                    
                    player.tempRadius = ((player.x + Player.radius) - (self.x + width / 2)) / 2
                    
                    player.tempX = ((player.x + Player.radius) + (self.x + width / 2)) / 2
                }
                
                player.tempX2 = player.tempX
                player.tempY2 = player.tempY
                
                player.tempRadius2 = player.tempRadius
                
            } else if player.x - Player.radius > self.x - (self.width / 2) && player.x + Player.radius < self.x + (self.width / 2) {
                
                player.tempX = player.x
                
                if player.y < self.y {
                    
                    player.tempRadius = ((self.y - height / 2) - (player.y - Player.radius)) / 2
                    
                    player.tempY = ((player.y - Player.radius) + (self.y - height / 2)) / 2
                    
                } else {
                    
                    player.tempRadius = ((player.y + Player.radius) - (self.y + height / 2)) / 2
                    
                    player.tempY = ((player.y + Player.radius) + (self.y + height / 2)) / 2
                }
                
                player.tempX2 = player.tempX
                player.tempY2 = player.tempY
                
                player.tempRadius2 = player.tempRadius
                
            } else {
                
                player.tempY = player.y
                
                if player.x < self.x {
                    
                    player.tempRadius = ((self.x - width / 2) - (player.x - Player.radius)) / 2
                    
                    player.tempX = ((player.x - Player.radius) + (self.x - width / 2)) / 2
                    
                } else {
                    
                    player.tempRadius = ((player.x + Player.radius) - (self.x + width / 2)) / 2
                    
                    player.tempX = ((player.x + Player.radius) + (self.x + width / 2)) / 2
                }
                
                player.tempX2 = player.x
                
                if player.y < self.y {
                    
                    player.tempRadius2 = ((self.y - height / 2) - (player.y - Player.radius)) / 2
                    
                    player.tempY2 = ((player.y - Player.radius) + (self.y - height / 2)) / 2
                    
                } else {
                    
                    player.tempRadius2 = ((player.y + Player.radius) - (self.y + height / 2)) / 2
                    
                    player.tempY2 = ((player.y + Player.radius) + (self.y + height / 2)) / 2
                }
            }
            
//            player.view2.frame.origin.x = player.tempX - player.tempRadius
//            player.view2.frame.origin.y = player.tempY - player.tempRadius
//
//            player.view2.frame.size.width = player.tempRadius * 2
//            player.view2.frame.size.height = player.tempRadius * 2
//
//            player.view2.layer.cornerRadius = player.tempRadius
//            player.view2.backgroundColor = UIColor.green
//
//            player.view2.layer.borderWidth = 0
//
//            player.view3.frame.origin.x = player.tempX2 - player.tempRadius2
//            player.view3.frame.origin.y = player.tempY2 - player.tempRadius2
//
//            player.view3.frame.size.width = player.tempRadius2 * 2
//            player.view3.frame.size.height = player.tempRadius2 * 2
//
//            player.view3.layer.cornerRadius = player.tempRadius2
//            player.view3.backgroundColor = UIColor.blue
//
//            player.view3.layer.borderWidth = 0
            
        }
        
        return false
    }
    
    func didHitGoal() -> Bool {
        
        if self.isCircle == true {
            if distance(x1: self.x, y1: self.y, x2: goal.x, y2: goal.y) <= (self.width / 2) - (Goal.width / 2) {
                return true
            }
        } else {
            if goal.x - (Goal.width / 2) > self.x - (self.width / 2) && goal.x + (Goal.width / 2) < self.x + (self.width / 2) && goal.y - (Goal.width / 2) > self.y - (self.height / 2) && goal.y + (Goal.width / 2) < self.y + (self.height / 2) {
                return true
            }
        }
        
        return false
    }
    
}
