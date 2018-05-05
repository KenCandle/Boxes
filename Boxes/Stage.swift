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
}
