//
//  Stages.swift
//  Boxes
//
//  Created by Collin Howard on 1/15/18.
//  Copyright © 2018 collinhoward. All rights reserved.
//

import UIKit

public func loadStages() {
    
    // BUG
    
    //stages.append(Stage(playerX: 50, playerY: 150, goalX: 150, goalY: 250, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [100], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], lines: [Line(startXPoints: [-15], startYPoints: [-15], endXPoints: [315], endYPoints: [315], speed: 0, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false), Line(startXPoints: [315], startYPoints: [-15], endXPoints: [-15], endYPoints: [315], speed: 0, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false)], safeBlocks: [SafeBlock(xPoints: [0, 150], yPoints: [0, 150], speed: 2, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], safeLines: []))
    
    // 1
    // vertical opening/closing slats
    // easy
    
    //stages.append(Stage(playerX: 150, playerY: 275, goalX: 150, goalY: 25, blocks: [Block(xPoints: [5, 145], yPoints: [125, 125], speed: 3, isLoop: true, widths: [10], heights: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [295, 155], yPoints: [125, 125], speed: 3, isLoop: true, widths: [10], heights: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 2
    // 2 stages of opening/closing gates
    // medium
    
    stages.append(Stage(playerX: 150, playerY: 267.5, goalX: 150, goalY: 32.5, blocks: [Block(xPoints: [75, 40], yPoints: [210, 210], speed: 0.75, isLoop: true, widths: [150], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [225, 260], yPoints: [210, 210], speed: 0.75, isLoop: true, widths: [150], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [40, 75], yPoints: [90, 90], speed: 1, isLoop: true, widths: [150], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [260, 225], yPoints: [90, 90], speed: 1, isLoop: true, widths: [150], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 3
    // zig-zag maze
    // medium
    
    stages.append(Stage(playerX: 275, playerY: 275, goalX: 25, goalY: 25, blocks: [Block(xPoints: [25], yPoints: [175], speed: 0, isLoop: true, widths: [50], heights: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [275], yPoints: [125], speed: 0, isLoop: true, widths: [50], heights: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [125], yPoints: [237.5], speed: 0, isLoop: true, widths: [150], heights: [125], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [175], yPoints: [62.5], speed: 0, isLoop: true, widths: [150], heights: [125], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 4
    // ferris wheel
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 275, goalX: 275, goalY: 275, blocks: [Block(xPoints: [150, 275, 150, 25], yPoints: [25, 150, 275, 150], speed: 2, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [150, 25, 150, 275], yPoints: [275, 150, 25, 150], speed: 2, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [25, 150, 275, 150], yPoints: [150, 25, 150, 275], speed: 2, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [275, 150, 25, 150], yPoints: [150, 275, 150, 25], speed: 2, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [30], heights: [30], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [150], yPoints: [225], speed: 0, isLoop: true, widths: [30], heights: [150], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 5
    // 4 horizontal rivers
    // hard
    
    stages.append(Stage(playerX: 150, playerY: 275, goalX: 150, goalY: 75, blocks: [Block(xPoints: [150], yPoints: [25], speed: 0, isLoop: true, widths: [300], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [-100, 200], yPoints: [75, 75], speed: 1, isLoop: true, widths: [200], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: true), Block(xPoints: [200, 500], yPoints: [75, 75], speed: 1, isLoop: true, widths: [200], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: true), Block(xPoints: [200, -100], yPoints: [125, 125], speed: 1, isLoop: true, widths: [200], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: true), Block(xPoints: [500, 200], yPoints: [125, 125], speed: 1, isLoop: true, widths: [200], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: true), Block(xPoints: [-100, 200], yPoints: [175, 175], speed: 1, isLoop: true, widths: [200], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: true), Block(xPoints: [200, 500], yPoints: [175, 175], speed: 1, isLoop: true, widths: [200], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: true), Block(xPoints: [200, -100], yPoints: [225, 225], speed: 1, isLoop: true, widths: [200], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: true), Block(xPoints: [500, 200], yPoints: [225, 225], speed: 1, isLoop: true, widths: [200], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: true)], lines: [], safeBlocks: [], safeLines: []))
    
    // 6
    // spinning X
    // easy
    
    stages.append(Stage(playerX: 62.5, playerY: 150, goalX: 150, goalY: 225, blocks: [Block(xPoints: [150], yPoints: [25], speed: 0, isLoop: true, widths: [300], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [275], speed: 0, isLoop: true, widths: [300], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [Line(startXPoints: [150, 450, 150, -150], startYPoints: [-150, 150, 450, 150], endXPoints: [150, -150, 150, 450], endYPoints: [450, 150, -150, 150], speed: 5.5, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false), Line(startXPoints: [450, 150, -150, 150], startYPoints: [150, 450, 150, -150], endXPoints: [-150, 150, 450, 150], endYPoints: [150, -150, 150, 450], speed: 5.5, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false)], safeBlocks: [SafeBlock(xPoints: [62.5], yPoints: [150], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], safeLines: []))
    
    // 7
    // spiral maze
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 25, goalX: 192, goalY: 108, blocks: [Block(xPoints: [66.5], yPoints: [125], speed: 0, isLoop: true, widths: [33], heights: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [233.5], speed: 0, isLoop: true, widths: [200], heights: [33], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [233.5], yPoints: [150], speed: 0, isLoop: true, widths: [33], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [175], yPoints: [66.5], speed: 0, isLoop: true, widths: [84], heights: [33], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [149.5], yPoints: [125], speed: 0, isLoop: true, widths: [33], heights: [84], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 8
    // 2 river crossings in large safe boxes
    // easy
        
    stages.append(Stage(playerX: 50, playerY: 250, goalX: 50, goalY: 50, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [100], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [50], yPoints: [150], speed: 0, isLoop: true, widths: [100], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [50, 250], yPoints: [250, 250], speed: 1, isLoop: true, widths: [100], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [250, 50], yPoints: [50, 50], speed: 1, isLoop: true, widths: [100], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 9
    // vertically moving Z pathway
    // medium
        
    stages.append(Stage(playerX: 25, playerY: 150, goalX: 275, goalY: 150, blocks: [Block(xPoints: [212.5, 212.5], yPoints: [200, 375], speed: 0.5, isLoop: true, widths: [75], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [112.5, 112.5], yPoints: [275, 450], speed: 0.5, isLoop: true, widths: [125], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [87.5, 87.5], yPoints: [-75, 100], speed: 0.5, isLoop: true, widths: [75], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [187.5, 187.5], yPoints: [-150, 25], speed: 0.5, isLoop: true, widths: [125], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 10
    // 2 rows of 4 horixontally flying balls with large circle in the middle
    // medium
    
    stages.append(Stage(playerX: 150, playerY: 275, goalX: 150, goalY: 25, blocks: [Block(xPoints: [8, 292], yPoints: [75, 75], speed: 4, isLoop: true, widths: [16], heights: [16], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [8, 292], yPoints: [225, 225], speed: 3, isLoop: true, widths: [16], heights: [16], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [8, 292], yPoints: [75, 75], speed: 3.5, isLoop: true, widths: [16], heights: [16], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [8, 292], yPoints: [225, 225], speed: 2.5, isLoop: true, widths: [16], heights: [16], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [292, 8], yPoints: [75, 75], speed: 2.75, isLoop: true, widths: [16], heights: [16], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [292, 8], yPoints: [225, 225], speed: 2, isLoop: true, widths: [16], heights: [16], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [292, 8], yPoints: [75, 75], speed: 3.15, isLoop: true, widths: [16], heights: [16], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [292, 8], yPoints: [225, 225], speed: 2.25, isLoop: true, widths: [16], heights: [16], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [100], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 11
    // 2 search lights with 2 safe zones
    // easy
    
    stages.append(Stage(playerX: 150, playerY: 275, goalX: 150, goalY: 25, blocks: [], lines: [Line(startXPoints: [-15], startYPoints: [150], endXPoints: [315, 315], endYPoints: [-15, 315], speed: 2, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false), Line(startXPoints: [315], startYPoints: [150], endXPoints: [-15, -15], endYPoints: [315, -15], speed: 1.5, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false)], safeBlocks: [SafeBlock(xPoints: [150], yPoints: [275], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 12
    // 2 individual moving blocks seperated by vertical strip
    // hard
    
    stages.append(Stage(playerX: 68.75, playerY: 75, goalX: 231.25, goalY: 25, blocks: [Block(xPoints: [150], yPoints: [125], speed: 0, isLoop: true, widths: [25], heights: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [68.75, -68.75], yPoints: [200, 200], speed: 3.5, isLoop: true, widths: [137.5], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [231.25, 368.75], yPoints: [150, 150], speed: 2.8, isLoop: true, widths: [137.5], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 13
    // vertical strip moving left/right where player starts in safe block
    // medium
    
    stages.append(Stage(playerX: 275, playerY: 150, goalX: 25, goalY: 150, blocks: [Block(xPoints: [75, 275], yPoints: [150, 150], speed: 3, isLoop: true, widths: [50], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [250], yPoints: [150], speed: 0, isLoop: true, widths: [100], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 14
    // one safe block for travel with player/goal isolated
    // easy
    // ugly

    stages.append(Stage(playerX: 275, playerY: 275, goalX: 25, goalY: 275, blocks: [Block(xPoints: [150], yPoints: [125], speed: 0, isLoop: true, widths: [300], heights: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [275], speed: 0, isLoop: true, widths: [200], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [225, 75, 75, 225], yPoints: [75, 75, 225, 225], speed: 2.5, isLoop: true, widths: [150], heights: [150], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 15
    // 3 plates with the 2 oustide in sync and other in opposite movement
    // hard
    
    stages.append(Stage(playerX: 25, playerY: 150, goalX: 275, goalY: 150, blocks: [Block(xPoints: [62.5, 237.5], yPoints: [50, 50], speed: 2.9, isLoop: true, widths: [25], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [62.5, 237.5], yPoints: [250, 250], speed: 2.9, isLoop: true, widths: [25], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [237.5, 62.5], yPoints: [150, 150], speed: 2.9, isLoop: true, widths: [25], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 16
    // 6 star shaped bouncing balls
    // hard
    
    stages.append(Stage(playerX: 25, playerY: 150, goalX: 262.5, goalY: 150, blocks: [Block(xPoints: [150, 150], yPoints: [62.5, 237.5], speed: 3.025, isLoop: true, widths: [30], heights: [30], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [150, 150], yPoints: [237.5, 62.5], speed: 3.025, isLoop: true, widths: [30], heights: [30], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [62.5, 237.5], yPoints: [62.5, 237.5], speed: 3.025, isLoop: true, widths: [30], heights: [30], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [62.5, 237.5], yPoints: [237.5, 62.5], speed: 3.025, isLoop: true, widths: [30], heights: [30], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [237.5, 62.5], yPoints: [62.5, 237.5], speed: 3.025, isLoop: true, widths: [30], heights: [30], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [237.5, 62.5], yPoints: [237.5, 62.5], speed: 3.025, isLoop: true, widths: [30], heights: [30], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [150], yPoints: [23.75], speed: 0, isLoop: true, widths: [300], heights: [47.5], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [276.25], speed: 0, isLoop: true, widths: [300], heights: [47.5], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 17
    // 1 static L and 1 moving L with goal in middle and player starting in corner
    // medium

    stages.append(Stage(playerX: 275, playerY: 275, goalX: 150, goalY: 150, blocks: [Block(xPoints: [237.5], yPoints: [150], speed: 0, isLoop: true, widths: [25], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [237.5], speed: 0, isLoop: true, widths: [200], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [100, 200], yPoints: [62.5, 62.5], speed: 3.7, isLoop: true, widths: [100], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [62.5, 62.5], yPoints: [100, 200], speed: 3.7, isLoop: true, widths: [25], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 18
    // block building with elevator with safe block carriage front view
    // medium

    stages.append(Stage(playerX: 37.5, playerY: 275, goalX: 262.5, goalY: 275, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [100], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [212.5], yPoints: [200], speed: 0, isLoop: true, widths: [25], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [87.5], yPoints: [200], speed: 0, isLoop: true, widths: [25], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [150, 150], yPoints: [50, 250], speed: 3, isLoop: true, widths: [100], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 19
    // block elevator with safe block carriage side view
    // medium
    // ugly
    
    stages.append(Stage(playerX: 37.5, playerY: 25, goalX: 262.5, goalY: 275, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [100], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [212.5], yPoints: [200], speed: 0, isLoop: true, widths: [25], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [87.5], yPoints: [100], speed: 0, isLoop: true, widths: [25], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [150, 150], yPoints: [50, 250], speed: 2.5, isLoop: true, widths: [100], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 20
    // snake maze with 2 moving blocks
    // medium

    stages.append(Stage(playerX: 275, playerY: 25, goalX: 25, goalY: 25, blocks: [Block(xPoints: [25], yPoints: [175], speed: 0, isLoop: true, widths: [50], heights: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [75], yPoints: [250], speed: 0, isLoop: true, widths: [50], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [175], yPoints: [75], speed: 0, isLoop: true, widths: [150], heights: [150], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [200], yPoints: [200], speed: 0, isLoop: true, widths: [100], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [0, 100], yPoints: [175, 175], speed: 1, isLoop: true, widths: [100], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [200, 200], yPoints: [275, 225], speed: 0.5, isLoop: true, widths: [100], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 21
    // 2 large dots in opposite corners, 1 small dot in middle
    // hard
    
    stages.append(Stage(playerX: 25, playerY: 275, goalX: 275, goalY: 25, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [100], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [0], yPoints: [0], speed: 0, isLoop: true, widths: [280], heights: [280], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [300], yPoints: [300], speed: 0, isLoop: true, widths: [280], heights: [280], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 22
    // 3 diagonal size-changing dots
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 25, goalX: 275, goalY: 275, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [45, 300], heights: [45, 300], sizeSpeed: 2.25, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [300], yPoints: [0], speed: 0, isLoop: true, widths:  [300, 45], heights: [300, 45], sizeSpeed: 2.25, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [0], yPoints: [300], speed: 0, isLoop: true, widths: [300, 45], heights: [300, 45], sizeSpeed: 2.25, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 23
    // 2 randomly moving beams with 2 safe zones
    // hard

    stages.append(Stage(playerX: 25, playerY: 150, goalX: 275, goalY: 150, blocks: [], lines: [Line(startXPoints: [200, 150, 250, 25, 300, 100], startYPoints: [-15, -15, -15, -15, -15, -15], endXPoints: [300, 100, 250, 0, 200, 150], endYPoints: [315, 315, 315, 315, 315, 315], speed: 2, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false), Line(startXPoints: [25, 300, 100, 200, 150, 250], startYPoints: [-15, -15, -15, -15, -15, -15], endXPoints: [0, 200, 150, 300, 100, 250], endYPoints: [315, 315, 315, 315, 315, 315], speed: 2, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false)], safeBlocks: [SafeBlock(xPoints: [25], yPoints: [150], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [100], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 24
    // vertical slow moving 2 block path
    // hard
    
    stages.append(Stage(playerX: 275, playerY: 275, goalX: 25, goalY: 25, blocks: [Block(xPoints: [125, 125], yPoints: [62.5, 150], speed: 0.75, isLoop: true, widths: [250], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [175, 175], yPoints: [150, 237.5], speed: 0.75, isLoop: true, widths: [250], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 25
    // 2 vertical presses
    // medium
    
    stages.append(Stage(playerX: 275, playerY: 275, goalX: 25, goalY: 25, blocks: [Block(xPoints: [87.5, 87.5], yPoints: [150, 100], speed: 1.1, isLoop: true, widths: [75], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [212.5, 212.5], yPoints: [200, 150], speed: 0.8, isLoop: true, widths: [75], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 26
    // large opeing/closing gate with safe circle in middle
    // hard
    
    stages.append(Stage(playerX: 25, playerY: 275, goalX: 275, goalY: 25, blocks: [Block(xPoints: [150, 150], yPoints: [75, 37.5], speed: 1.5, isLoop: true, widths: [200], heights: [150], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [225, 262.5], speed: 1.5, isLoop: true, widths: [200], heights: [150], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], safeLines: []))

    // 27
    // 2 vertically moving bars with 3 safe zones
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 150, goalX: 275, goalY: 150, blocks: [Block(xPoints: [12.5, 137.5], yPoints: [150, 150], speed: 2, isLoop: true, widths: [25], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [287.5, 162.5], yPoints: [150, 150], speed: 2.5, isLoop: true, widths: [25], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [37.5], yPoints: [150], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [262.5], yPoints: [150], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 28
    // moving tic-tac-toe board with 2 safe planks
    // medium

    stages.append(Stage(playerX: 25, playerY: 150, goalX: 150, goalY: 275, blocks: [Block(xPoints: [0, 150], yPoints: [150, 150], speed: 3, isLoop: true, widths: [25], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [300, 150], yPoints: [150, 150], speed: 3, isLoop: true, widths: [25], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [0, 150], speed: 3, isLoop: true, widths: [300], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [300, 150], speed: 3, isLoop: true, widths: [300], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [20], yPoints: [150], speed: 0, isLoop: true, widths: [150], heights: [40], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [150], yPoints: [280], speed: 0, isLoop: true, widths: [40], heights: [150], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 29
    // opening/closing mouth with 3 safe zones
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 275, goalX: 25, goalY: 25, blocks: [], lines: [Line(startXPoints: [-15], startYPoints: [150], endXPoints: [315, 315], endYPoints: [-15, 150], speed: 3.5, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false), Line(startXPoints: [-15], startYPoints: [150], endXPoints: [315, 315], endYPoints: [315, 150], speed: 3.5, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false)], safeBlocks: [SafeBlock(xPoints: [250], yPoints: [150], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), SafeBlock(xPoints: [200], yPoints: [250], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), SafeBlock(xPoints: [200], yPoints: [50], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], safeLines: []))
    
    // 30
    // 1 large and slow moving press
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 25, goalX: 275, goalY: 25, blocks: [Block(xPoints: [150, 150], yPoints: [100, 150], speed: 0.5, isLoop: true, widths: [200], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 31
    // fast moving vertical and horizontal beams with middle safe zone
    // medium
    
    stages.append(Stage(playerX: 275, playerY: 275, goalX: 25, goalY: 25, blocks: [Block(xPoints: [150, 150], yPoints: [12.5, 287.5], speed: 6, isLoop: true, widths: [300], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [12.5, 287.5], yPoints: [150, 150], speed: 6, isLoop: true, widths: [25], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [275], yPoints: [275], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), SafeBlock(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], safeLines: []))
    
    // 32
    // U shaped path with vertically moving bar and 3 saze zones
    // medium

    stages.append(Stage(playerX: 25, playerY: 25, goalX: 25, goalY: 275, blocks: [Block(xPoints: [125], yPoints: [150], speed: 0, isLoop: true, widths: [250], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [12.5, 287.5], yPoints: [150, 150], speed: 3.4, isLoop: true, widths: [25], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [275], yPoints: [150], speed: 0, isLoop: true, widths: [50], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [50], yPoints: [25], speed: 0, isLoop: true, widths: [100], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [50], yPoints: [275], speed: 0, isLoop: true, widths: [100], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))

    // 33
    // full lap with corner safe zones and diagonal scanner
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 225, goalX: 75, goalY: 275, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [200], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [25], yPoints: [275], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [Line(startXPoints: [-300, 0], startYPoints: [300, 600], endXPoints: [300, 600], endYPoints: [-300, 0], speed: 5.5, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false)], safeBlocks: [SafeBlock(xPoints: [275], yPoints: [25], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [25], yPoints: [225], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [75], yPoints: [275], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [25], yPoints: [25], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [275], yPoints: [275], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 34
    // large block with size changing safe zone circle in middle
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 25, goalX: 275, goalY: 275, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [300], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [100, 237.5], heights: [100, 237.5], sizeSpeed: 2.5, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], safeLines: []))
    
    // 35
    // 2 bars with moving balls
    // medium
    
    stages.append(Stage(playerX: 150, playerY: 41.25, goalX: 150, goalY: 258.75, blocks: [Block(xPoints: [150], yPoints: [95], speed: 0, isLoop: true, widths: [300], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [205], speed: 0, isLoop: true, widths: [300], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [37.5, 262.5], yPoints: [95, 95], speed: 2, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), SafeBlock(xPoints: [262.5, 37.5], yPoints: [205, 205], speed: 3.5, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], safeLines: []))
    
    // 36
    // U shaped path with large block moving left/right with start and end safe zones
    // medium
    
    stages.append(Stage(playerX: 275, playerY: 275, goalX: 25, goalY: 275, blocks: [Block(xPoints: [100, 200], yPoints: [175, 175], speed: 2.25, isLoop: true, widths: [200], heights: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [275], yPoints: [275], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [25], yPoints: [275], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 37
    // U shaped path with large size changing block with 3 safe zones
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 25, goalX: 275, goalY: 25, blocks: [Block(xPoints: [150], yPoints: [25], speed: 0, isLoop: true, widths: [200], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [200, 300], heights: [200, 300], sizeSpeed: 1.5, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [150], yPoints: [275], speed: 0, isLoop: true, widths: [300], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [25], yPoints: [25], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [275], yPoints: [25], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 38
    // U shaped path with horizontally moving bar
    // medium
    
    stages.append(Stage(playerX: 50, playerY: 250, goalX: 250, goalY: 250, blocks: [Block(xPoints: [150], yPoints: [200], speed: 0, isLoop: true, widths: [100], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [12.5, 287.5], yPoints: [50, 50], speed: 4.3, isLoop: true, widths: [25], heights: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 39
    // diagonal strip with diagonally moving circular safe zone
    // medium

    stages.append(Stage(playerX: 50, playerY: 50, goalX: 250, goalY: 250, blocks: [], lines: [Line(startXPoints: [-15], startYPoints: [315], endXPoints: [315], endYPoints: [-15], speed: 0, isLoop: true, widths: [100], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false)], safeBlocks: [SafeBlock(xPoints: [225, 75], yPoints: [225, 75], speed: 2, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], safeLines: []))
    
    // 40
    // diagonal 8 path with 2 diagonally moving bars and corner safe zones
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 25, goalX: 275, goalY: 275, blocks: [Block(xPoints: [237.5], yPoints: [62.5], speed: 0, isLoop: true, widths: [125], heights: [125], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [62.5], yPoints: [237.5], speed: 0, isLoop: true, widths: [125], heights: [125], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [87.5], yPoints: [87.5], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [212.5], yPoints: [212.5], speed: 0, isLoop: true, widths: [75], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [Line(startXPoints: [-300, 0], startYPoints: [300, 600], endXPoints: [300, 600], endYPoints: [-300, 0], speed: 3.5, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false), Line(startXPoints: [0, -300], startYPoints: [600, 300], endXPoints: [600, 300], endYPoints: [0, -300], speed: 3.5, isLoop: true, widths: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false)], safeBlocks: [SafeBlock(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [25], yPoints: [25], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [275], yPoints: [275], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [25], yPoints: [150], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [275], yPoints: [150], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [150], yPoints: [25], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [150], yPoints: [275], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))

    // 41
    // vertically moving short and thin path
    // medium
    
    stages.append(Stage(playerX: 56.25, playerY: 56.25, goalX: 243.75, goalY: 243.75, blocks: [Block(xPoints: [150, 150], yPoints: [-150, 100], speed: 2.5, isLoop: true, widths: [75], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [200, 450], speed: 2.5, isLoop: true, widths: [75], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 42
    // 3 size changing safe lines within thick cross
    // medium
    
    stages.append(Stage(playerX: 37.5, playerY: 37.5, goalX: 262.5, goalY: 37.5, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [300], heights: [150], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [150], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [37.5], yPoints: [150], speed: 0, isLoop: true, widths: [0, 75], heights: [150, 150], sizeSpeed: 1.5, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [150], yPoints: [262.5], speed: 0, isLoop: true, widths: [150, 150], heights: [75, 0], sizeSpeed: 2, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [262.5], yPoints: [150], speed: 0, isLoop: true, widths: [0, 75], heights: [150, 150], sizeSpeed: 2.5, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 43
    // 2 shaped path with corner safe zones and 2 vertically moving horizontal bars
    // medium

    stages.append(Stage(playerX: 275, playerY: 275, goalX: 25, goalY: 25, blocks: [Block(xPoints: [125], yPoints: [87.5], speed: 0, isLoop: true, widths: [250], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [175], yPoints: [212.5], speed: 0, isLoop: true, widths: [250], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [0, 150], speed: 2, isLoop: true, widths: [300], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [300, 150], speed: 2, isLoop: true, widths: [300], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [275], yPoints: [275], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [25], yPoints: [275], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [275], yPoints: [150], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [75], yPoints: [150], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [275], yPoints: [25], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 44
    // large circle block seperating player and goal with 1 rotating safe line
    // medium
    
    stages.append(Stage(playerX: 25, playerY: 25, goalX: 275, goalY: 275, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [200], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [300], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: [SafeLine(startXPoints: [150, 450, 150, -150], startYPoints: [-150, 150, 450, 150], endXPoints: [150, -150, 150, 450], endYPoints: [450, 150, -150, 150], speed: 5.5, isLoop: true, widths: [60], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false)]))
    
    // 45
    // 2 horizontal bars with horizontally moving vertical safe bar
    // medium
    
    stages.append(Stage(playerX: 275, playerY: 25, goalX: 25, goalY: 275, blocks: [Block(xPoints: [150], yPoints: [87.5], speed: 0, isLoop: true, widths: [300], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [212.5], speed: 0, isLoop: true, widths: [300], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [30, 270], yPoints: [150, 150], speed: 2.25, isLoop: true, widths: [60], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 46
    // tube beetle maze
    // medium
    
    stages.append(Stage(playerX: 275, playerY: 191.665, goalX: 275, goalY: 108.335, blocks: [Block(xPoints: [175], yPoints: [150], speed: 0, isLoop: true, widths: [250], heights: [33.33], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [233.335], yPoints: [150], speed: 0, isLoop: true, widths: [33.33], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [66.66500], yPoints: [150], speed: 0, isLoop: true, widths: [33.33], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [41.665], speed: 0, isLoop: true, widths: [33.33], heights: [83.33], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [258.335], speed: 0, isLoop: true, widths: [33.33], heights: [83.33], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 47
    // key shaped path with vertically moving horizontal bar and 3 safe zones
    // medium

    stages.append(Stage(playerX: 150, playerY: 25, goalX: 150, goalY: 275, blocks: [Block(xPoints: [62.5], yPoints: [62.5], speed: 0, isLoop: true, widths: [125], heights: [125], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [237.5], yPoints: [62.5], speed: 0, isLoop: true, widths: [125], heights: [125], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150], yPoints: [212.5], speed: 0, isLoop: true, widths: [200], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [300, 0], speed: 2.95, isLoop: true, widths: [300], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [150], yPoints: [62.5], speed: 0, isLoop: true, widths: [50], heights: [125], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [25], yPoints: [212.5], speed: 0, isLoop: true, widths: [50], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [275], yPoints: [212.5], speed: 0, isLoop: true, widths: [50], heights: [75], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
    // 48
    // 4 balls spinning around middle ball with diagonal edges
    // medium

    stages.append(Stage(playerX: 25, playerY: 275, goalX: 275, goalY: 25, blocks: [Block(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [62.5], heights: [62.5], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [75, 75, 225, 225], yPoints: [75, 225, 225, 75], speed: 2, isLoop: true, widths: [65], heights: [65], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [75, 225, 225, 75], yPoints: [225, 225, 75, 75], speed: 2, isLoop: true, widths: [65], heights: [65], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [225, 225, 75, 75], yPoints: [225, 75, 75, 225], speed: 2, isLoop: true, widths: [65], heights: [65], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false), Block(xPoints: [225, 75, 75, 225], yPoints: [75, 75, 225, 225], speed: 2, isLoop: true, widths: [65], heights: [65], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: true, canJump: false)], lines: [Line(startXPoints: [-300], startYPoints: [300], endXPoints: [300], endYPoints: [-300], speed: 0, isLoop: true, widths: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false), Line(startXPoints: [0], startYPoints: [600], endXPoints: [600], endYPoints: [0], speed: 0, isLoop: true, widths: [250], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, canJump: false)], safeBlocks: [], safeLines: []))
    
    // 49
    // 2 vertical ant lines with bar blocking goal
    // medium
    
    stages.append(Stage(playerX: 268.75, playerY: 150, goalX: 25, goalY: 150, blocks: [Block(xPoints: [62.5], yPoints: [150], speed: 0, isLoop: true, widths: [25], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [25, 50], speed: 0.75, isLoop: true, widths: [25], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [125, 100], speed: 0.75, isLoop: true, widths: [25], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [175, 200], speed: 0.75, isLoop: true, widths: [25], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [150, 150], yPoints: [275, 250], speed: 0.75, isLoop: true, widths: [25], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [225, 225], yPoints: [50, 25], speed: 0.75, isLoop: true, widths: [25], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [225, 225], yPoints: [100, 125], speed: 0.75, isLoop: true, widths: [25], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [225, 225], yPoints: [200, 175], speed: 0.75, isLoop: true, widths: [25], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [225, 225], yPoints: [250, 275], speed: 0.75, isLoop: true, widths: [25], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [], safeLines: []))
    
    // 50
    // opening/closing W with 3 safe zones
    // medium

    stages.append(Stage(playerX: 275, playerY: 125, goalX: 175, goalY: 25, blocks: [Block(xPoints: [-25, 0], yPoints: [325, 300], speed: 0.35, isLoop: true, widths: [300], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [225, 200], yPoints: [312.5, 287.5], speed: 0.35, isLoop: true, widths: [200], heights: [25], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [-12.5, 12.5], yPoints: [75, 100], speed: 0.35, isLoop: true, widths: [25], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [325, 300], yPoints: [-25, 0], speed: 0.35, isLoop: true, widths: [300], heights: [550], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), Block(xPoints: [325, 300], yPoints: [-25, 0], speed: 0.35, isLoop: true, widths: [550], heights: [300], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], lines: [], safeBlocks: [SafeBlock(xPoints: [150], yPoints: [150], speed: 0, isLoop: true, widths: [50], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [100], yPoints: [25], speed: 0, isLoop: true, widths: [200], heights: [50], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false), SafeBlock(xPoints: [275], yPoints: [200], speed: 0, isLoop: true, widths: [50], heights: [200], sizeSpeed: 0, isSizeLoop: true, teleportInterval: 0, isCircle: false, canJump: false)], safeLines: []))
    
}
