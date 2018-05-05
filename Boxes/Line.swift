//
//  Line.swift
//  Boxes
//
//  Created by Collin Howard on 1/15/18.
//  Copyright © 2018 collinhoward. All rights reserved.
//

import UIKit

class Line {
    
    var startX: CGFloat
    var startY: CGFloat
    
    var endX: CGFloat
    var endY: CGFloat
    
    var width: CGFloat
    
    var startXPoints = [CGFloat]()
    var startYPoints = [CGFloat]()
    
    var endXPoints = [CGFloat]()
    var endYPoints = [CGFloat]()
    
    var speed: CGFloat
    
    var isLoop: Bool
    
    var widths = [CGFloat]()
    
    var sizeSpeed: CGFloat
    
    var isSizeLoop: Bool
    
    var teleportInterval: CGFloat
    
    var canJump: Bool
    
    var locationPos: Int
    var locationPos2: Int

    var sizePos: Int
    
    var goBack: Bool
    var goBack2: Bool
    var goBack3: Bool
    
    var color: UIColor = UIColor.black

    var line = CAShapeLayer()
    
    init(startXPoints: [CGFloat], startYPoints: [CGFloat], endXPoints: [CGFloat], endYPoints: [CGFloat], speed: CGFloat, isLoop: Bool, widths: [CGFloat], sizeSpeed: CGFloat, isSizeLoop: Bool, teleportInterval: CGFloat, canJump: Bool) {
        
        self.startX = startXPoints[0]
        self.startY = startYPoints[0]
        
        self.endX = endXPoints[0]
        self.endY = endYPoints[0]

        self.startXPoints = startXPoints
        self.startYPoints = startYPoints
        
        self.endXPoints = endXPoints
        self.endYPoints = endYPoints
        
        self.speed = speed
        
        self.isLoop = isLoop
        
        self.width = widths[0]
        
        self.widths = widths
        
        self.sizeSpeed = sizeSpeed
        
        self.isSizeLoop = isSizeLoop
        
        self.teleportInterval = teleportInterval
        
        self.canJump = canJump
        
        self.locationPos = 0
        self.locationPos2 = 0

        self.sizePos = 0
        
        self.goBack = false
        self.goBack2 = false
        self.goBack3 = false

        let linePath = UIBezierPath()
        
        linePath.move(to: CGPoint(x: self.startX, y: self.startY))
        linePath.addLine(to: CGPoint(x: self.endX, y: self.endY))
        
        line.path = linePath.cgPath
        line.strokeColor = self.color.cgColor
        line.lineWidth = self.width
        line.lineJoin = kCALineJoinRound
    }
    
    func move() {
        
        if distance(x1: self.startX, y1: self.startY, x2: self.startXPoints[locationPos], y2: self.startYPoints[locationPos]) <= finishRange {
            
            self.startX = self.startXPoints[locationPos]
            self.startY = self.startYPoints[locationPos]
            
            if locationPos >= startXPoints.count - 1 {
                
                if canJump == true {
                    
                    locationPos = 1
                    
                    self.startX = self.startXPoints[0]
                    self.startY = self.startYPoints[0]
                    
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
        
        let dist = distance(x1: self.startX, y1: self.startY, x2: self.startXPoints[locationPos], y2: self.startYPoints[locationPos])
        
        if dist != 0 {
            
            let multiplier = self.speed / dist
            
            let xSpeed = (self.startXPoints[locationPos] - self.startX) * multiplier
            let ySpeed = (self.startYPoints[locationPos] - self.startY) * multiplier
            
            self.startX += xSpeed * speedChange
            self.startY += ySpeed * speedChange
        }
        
        if distance(x1: self.endX, y1: self.endY, x2: self.endXPoints[locationPos2], y2: self.endYPoints[locationPos2]) <= finishRange {
            
            self.endX = self.endXPoints[locationPos2]
            self.endY = self.endYPoints[locationPos2]
            
            if locationPos2 >= endXPoints.count - 1 {
                
                if canJump == true {
                    
                    locationPos2 = 1
                    
                    self.endX = self.endXPoints[0]
                    self.endY = self.endYPoints[0]
                    
                } else if isLoop == true {
                    
                    locationPos2 = 0
                    
                } else {
                    
                    locationPos2 -= 1
                    goBack2 = true
                }
                
            } else if locationPos2 <= 0 && isLoop == false {
                
                locationPos2 += 1
                goBack2 = false
                
            } else {
                
                if goBack2 == true {
                    locationPos2 -= 1
                } else {
                    locationPos2 += 1
                }
            }
            
        }
        
        let dist2 = distance(x1: self.endX, y1: self.endY, x2: self.endXPoints[locationPos2], y2: self.endYPoints[locationPos2])
        
        if dist2 != 0 {
            
            let multiplier = self.speed / dist2
            
            let xSpeed = (self.endXPoints[locationPos2] - self.endX) * multiplier
            let ySpeed = (self.endYPoints[locationPos2] - self.endY) * multiplier
            
            self.endX += xSpeed * speedChange
            self.endY += ySpeed * speedChange
        }
        
        if distance(x1: self.width, y1: 0, x2: self.widths[sizePos], y2: 0) <= finishRange {
            
            self.width = self.widths[sizePos]
            
            if sizePos >= widths.count - 1 {
                
                if isSizeLoop == true {
                    
                    sizePos = 0
                    
                } else {
                    
                    sizePos -= 1
                    goBack3 = true
                }
                
            } else if sizePos <= 0 && isSizeLoop == false {
                
                sizePos += 1
                goBack3 = false
                
            } else {
                
                if goBack3 == true {
                    sizePos -= 1
                } else {
                    sizePos += 1
                }
            }
            
        }
        
        let dist3 = distance(x1: self.width, y1: 0, x2: self.widths[sizePos], y2: 0)
        
        if dist3 != 0 {
            
            let multiplier = self.sizeSpeed / dist3
            
            let widthSpeed = (self.widths[sizePos] - self.width) * multiplier
            
            self.width += widthSpeed * speedChange
        }
        
        let linePath = UIBezierPath()
        
        linePath.move(to: CGPoint(x: self.startX, y: self.startY))
        linePath.addLine(to: CGPoint(x: self.endX, y: self.endY))
        
        line.path = linePath.cgPath
        line.strokeColor = self.color.cgColor
        line.lineWidth = self.width
        line.lineJoin = kCALineJoinRound
    }
    
    func didHitPlayer() -> Bool {
        
        if player.isPartSafe == true {
            
            let playerPoint = CGPoint(x: player.tempX, y: player.tempY)
            let r = player.tempRadius + (self.width / 2)
            
            let playerPoint2 = CGPoint(x: player.tempX2, y: player.tempY2)
            let r2 = player.tempRadius2 + (self.width / 2)
            
            if circleDidHitLine(playerPoint: playerPoint, r: r) == true || circleDidHitLine(playerPoint: playerPoint2, r: r2) == true {
                
                //
                //print("DEAD")
                //
                
                return true
            }
            
            return false
            
        } else {
            
            let playerPoint = CGPoint(x: player.x, y: player.y)
            let r = Player.radius + (self.width / 2)
            
            //
//            if circleDidHitLine(playerPoint: playerPoint, r: r) == true {
//
//                print("DEAD2")
//
//            }
            //
            
            return circleDidHitLine(playerPoint: playerPoint, r: r)
        }
    }
    
    private func circleDidHitLine(playerPoint: CGPoint, r: CGFloat) -> Bool {
        
        let startPoint = CGPoint(x: self.startX, y: self.startY)
        let endPoint = CGPoint(x: self.endX, y: self.endY)
        
        let d = CGVector(dx: endPoint.x - startPoint.x, dy: endPoint.y - startPoint.y)
        let f = CGVector(dx: startPoint.x - playerPoint.x, dy: startPoint.y - playerPoint.y)
        
        let a: CGFloat = dotProduct(vector1: d, vector2: d)
        let b: CGFloat = 2 * dotProduct(vector1: f, vector2: d)
        let c: CGFloat = dotProduct(vector1: f, vector2: f) - r * r
        
        var discriminant: CGFloat = b * b - 4 * a * c
        
        if (discriminant < 0) {
            
            // no intersection
            
        } else {
            
            // ray didn't totally miss sphere,
            // so there is a solution to
            // the equation.
            
            discriminant = sqrt(discriminant);
            
            // either solution may be on or off the ray so need to test both
            // t1 is always the smaller value, because BOTH discriminant and
            // a are nonnegative.
            
            let t1: CGFloat = (-b - discriminant) / (2 * a)
            let t2: CGFloat = (-b + discriminant) / (2 * a)
            
            // 3x HIT cases:
            //          -o->             --|-->  |            |  --|->
            // Impale(t1 hit,t2 hit), Poke(t1 hit,t2>1), ExitWound(t1<0, t2 hit),
            
            // 3x MISS cases:
            //       ->  o                     o ->              | -> |
            // FallShort (t1>1,t2>1), Past (t1<0,t2<0), CompletelyInside(t1<0, t2>1)
            
            if (t1 >= 0 && t1 <= 1) {
                
                // t1 is the intersection, and it's closer than t2
                // (since t1 uses -b - discriminant)
                // Impale, Poke
                
                return true
            }
            
            // here t1 didn't intersect so we are either started
            // inside the sphere or completely past it
            
            if (t2 >= 0 && t2 <= 1) {
                
                // ExitWound
                
                return true
            }
            
            // no intn: FallShort, Past, CompletelyInside
            
            return false
        }
        
        return false
    }
    
    private func dotProduct(vector1: CGVector, vector2: CGVector) -> CGFloat {
        return vector1.dx * vector2.dx + vector1.dy * vector2.dy;
    }
}
