//
//  Stage.swift
//  Boxes
//
//  Created by Collin Howard on 1/14/18.
//  Copyright © 2018 collinhoward. All rights reserved.
//

import UIKit

class Stage {
    
    var playerX: CGFloat = 0
    var playerY: CGFloat = 0
    
    var goalX: CGFloat = 0
    var goalY: CGFloat = 0

    var blocks = [Block]()
    var lines = [Line]()
    
    var safeBlocks = [SafeBlock]()
    var safeLines = [SafeLine]()
    
    init(playerX: CGFloat, playerY: CGFloat, goalX: CGFloat, goalY: CGFloat, blocks: [Block], lines: [Line], safeBlocks: [SafeBlock], safeLines: [SafeLine]) {
        
        self.playerX = playerX
        self.playerY = playerY
        
        self.goalX = goalX
        self.goalY = goalY

        self.blocks = blocks
        self.lines = lines
        
        self.safeBlocks = safeBlocks
        self.safeLines = safeLines
    }
    
    public func rotateStage() {
        
        let choice = Int(arc4random_uniform(UInt32(4)))
        
        if choice == 0 {

            flipAllX()
            
        } else if choice == 1 {

            flipAllY()

        } else if choice == 2 {

            flipAllX()
            flipAllY()
        }
    }
    
    private func flipAllX() {
        
        let dist = gameViewSideLength
        
        self.playerX = dist - self.playerX
        self.goalX = dist - self.goalX
        
        for i in 0 ..< self.blocks.count {
            for j in 0 ..< self.blocks[i].xPoints.count {
                self.blocks[i].xPoints[j] = dist - self.blocks[i].xPoints[j]
                self.blocks[i].x = self.blocks[i].xPoints[0]
            }
        }
        
        for i in 0 ..< self.lines.count {
            for j in 0 ..< self.lines[i].startXPoints.count {
                self.lines[i].startXPoints[j] = dist - self.lines[i].startXPoints[j]
                self.lines[i].startX = self.lines[i].startXPoints[0]
            }
            for j in 0 ..< self.lines[i].endXPoints.count {
                self.lines[i].endXPoints[j] = dist - self.lines[i].endXPoints[j]
                self.lines[i].endX = self.lines[i].endXPoints[0]
            }
        }
        
        for i in 0 ..< self.safeBlocks.count {
            for j in 0 ..< self.safeBlocks[i].xPoints.count {
                self.safeBlocks[i].xPoints[j] = dist - self.safeBlocks[i].xPoints[j]
                self.safeBlocks[i].x = self.safeBlocks[i].xPoints[0]
            }
        }
        
        for i in 0 ..< self.safeLines.count {
            for j in 0 ..< self.safeLines[i].startXPoints.count {
                self.safeLines[i].startXPoints[j] = dist - self.safeLines[i].startXPoints[j]
                self.safeLines[i].startX = self.safeLines[i].startXPoints[0]
            }
            for j in 0 ..< self.safeLines[i].endXPoints.count {
                self.safeLines[i].endXPoints[j] = dist - self.safeLines[i].endXPoints[j]
                self.safeLines[i].endX = self.safeLines[i].endXPoints[0]
            }
        }
    }
    
    private func flipAllY() {
        
        let dist = gameViewSideLength
        
        self.playerY = dist - self.playerY
        self.goalY = dist - self.goalY
        
        for i in 0 ..< self.blocks.count {
            for j in 0 ..< self.blocks[i].yPoints.count {
                self.blocks[i].yPoints[j] = dist - self.blocks[i].yPoints[j]
                self.blocks[i].y = self.blocks[i].yPoints[0]
            }
        }
        
        for i in 0 ..< self.lines.count {
            for j in 0 ..< self.lines[i].startYPoints.count {
                self.lines[i].startYPoints[j] = dist - self.lines[i].startYPoints[j]
                self.lines[i].startY = self.lines[i].startYPoints[0]
            }
            for j in 0 ..< self.lines[i].endYPoints.count {
                self.lines[i].endYPoints[j] = dist - self.lines[i].endYPoints[j]
                self.lines[i].endY = self.lines[i].endYPoints[0]
            }
        }
        
        for i in 0 ..< self.safeBlocks.count {
            for j in 0 ..< self.safeBlocks[i].yPoints.count {
                self.safeBlocks[i].yPoints[j] = dist - self.safeBlocks[i].yPoints[j]
                self.safeBlocks[i].y = self.safeBlocks[i].yPoints[0]
            }
        }
        
        for i in 0 ..< self.safeLines.count {
            for j in 0 ..< self.safeLines[i].startYPoints.count {
                self.safeLines[i].startYPoints[j] = dist - self.safeLines[i].startYPoints[j]
                self.safeLines[i].startY = self.safeLines[i].startYPoints[0]
            }
            for j in 0 ..< self.safeLines[i].endYPoints.count {
                self.safeLines[i].endYPoints[j] = dist - self.safeLines[i].endYPoints[j]
                self.safeLines[i].endY = self.safeLines[i].endYPoints[0]
            }
        }
    }
    
}
