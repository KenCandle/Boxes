//
//  GameController.swift
//  Boxes
//
//  Created by Collin Howard on 1/14/18.
//  Copyright © 2018 collinhoward. All rights reserved.
//

import UIKit

class GameController: UIViewController {
    
    // VARIABLES
    
    var timeForStage: CGFloat = 15
    
    var time: CGFloat = 0
    
    var moveTimer = Timer()
    
    var currentStage: Stage = Stage(playerX: 0, playerY: 0, goalX: 0, goalY: 0, blocks: [], lines: [], safeBlocks: [], safeLines: [])
    
    var touchStartX: CGFloat = 0
    var touchStartY: CGFloat = 0
    
    var playerStartX: CGFloat = 0
    var playerStartY: CGFloat = 0
    
    var canTouch: Bool = true
    
    var isMenu: Bool = true
    var isPlaying: Bool = false
    var isPaused: Bool = false
    
    var canTimerRun: Bool = true
    
    var currentStageIndex: Int = 0
    var pastStageIndex: Int = -1
    
    var colorCount: Int = -1

    // UI SETUP
    
    lazy var scoreButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = backgroundColor
        button.setTitle("0", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        
        if screenSize.width <= 320 {
            button.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: UIFont.Weight.bold)
        } else {
            button.titleLabel?.font = UIFont.systemFont(ofSize: 70, weight: UIFont.Weight.bold)
        }
        
        button.layer.borderWidth = 0
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel!.textAlignment = .center
        button.titleLabel!.numberOfLines = 1
        button.addTarget(self, action: #selector(handlePause), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    
    @objc func handlePause() {
        
        touchView.isHidden = true

        scoreButton.isEnabled = false
        
        resumeButton.isHidden = false
        quitButton.isHidden = false
        
        isMenu = false
        isPlaying = false
        isPaused = true
        
        canTimerRun = false
    }
    
    lazy var resumeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = color
        button.setTitle("RESUME", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 75, weight: UIFont.Weight.light)
        button.layer.borderWidth = 0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel!.textAlignment = .center
        button.titleLabel!.numberOfLines = 1
        button.addTarget(self, action: #selector(handleResume), for: .touchUpInside)
        button.isHidden = true
        return button
    }()
    
    @objc func handleResume() {
        
        touchView.isHidden = false
        
        scoreButton.isEnabled = true
        
        resumeButton.isHidden = true
        quitButton.isHidden = true

        isMenu = false
        isPlaying = true
        isPaused = false
        
        canTimerRun = true
    }
    
    let gameOverLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = color
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 75, weight: UIFont.Weight.light)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "GAME\nOVER"
        label.baselineAdjustment = .alignCenters
        label.textAlignment = .center
        label.numberOfLines = 2
        label.isHidden = true
        return label
    }()
    
    lazy var quitButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.setTitle("QUIT", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35, weight: UIFont.Weight.semibold)
        button.layer.borderWidth = 0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel!.textAlignment = .center
        button.titleLabel!.numberOfLines = 1
        button.addTarget(self, action: #selector(handleQuit), for: .touchUpInside)
        button.isHidden = true
        return button
    }()
    
    @objc func handleQuit() {
        
        scoreButton.isEnabled = false
        
        gameOverLabel.isHidden = true
        resumeButton.isHidden = true
        quitButton.isHidden = true
        
        playButton.isHidden = false
        titleLabel.isHidden = false
        switchColorsButton.isHidden = false
        
        timeForStage = 15

        time = 0
        score = 0
        
        speedChange = 0.5
        
        canTouch = true
        
        isMenu = true
        isPlaying = false
        isPaused = false
        
        scoreButton.setTitle("", for: .normal)
        
        progressView.setProgress(1, animated: false)
        
        canTimerRun = true
    }
    
    lazy var playButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.setTitle("PLAY", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35, weight: UIFont.Weight.semibold)
        button.layer.borderWidth = 0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel!.textAlignment = .center
        button.titleLabel!.numberOfLines = 1
        button.addTarget(self, action: #selector(handlePlay), for: .touchUpInside)
        return button
    }()
    
    @objc func handlePlay() {
        
        touchView.isHidden = false
        
        scoreButton.isEnabled = true
        
        canTouch = true
        
        playButton.isHidden = true
        titleLabel.isHidden = true
        switchColorsButton.isHidden = true
        
        scoreButton.setTitle("0", for: .normal)
        
        isMenu = false
        isPlaying = true
        isPaused = false

        currentStage = stages[Int(arc4random_uniform(UInt32(stages.count)))]
        
        repeat {

            currentStageIndex = Int(arc4random_uniform(UInt32(stages.count)))

        } while currentStageIndex == pastStageIndex

        pastStageIndex = currentStageIndex

        currentStage = stages[currentStageIndex]
        
        player.setup(stage: currentStage)
        goal.setup(stage: currentStage)
        
        time = 0
        
        progressView.setProgress(1, animated: false)
    }
    
    lazy var retryButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.setTitle("RETRY", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35, weight: UIFont.Weight.semibold)
        button.layer.borderWidth = 0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel!.textAlignment = .center
        button.titleLabel!.numberOfLines = 1
        button.addTarget(self, action: #selector(handleRetry), for: .touchUpInside)
        button.isHidden = true
        return button
    }()
    
    @objc func handleRetry() {
        
        retryButton.isHidden = true
        
        handleQuit()
        handlePlay()
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = color
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "B   B   B\nO       O       O\nX         X         X\nE       E       E\nS   S   S"
        label.baselineAdjustment = .alignCenters
        label.textAlignment = .center
        label.numberOfLines = 5
        return label
    }()
    
    lazy var switchColorsButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.setTitle("", for: .normal)
        button.setTitleColor(UIColor.clear, for: .normal)
        button.layer.borderWidth = 0
        button.layer.borderColor = UIColor.clear.cgColor
        button.layer.cornerRadius = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel!.textAlignment = .center
        button.titleLabel!.numberOfLines = 1
        button.addTarget(self, action: #selector(switchColors), for: .touchUpInside)
        return button
    }()
    
    let highscoreLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.black.withAlphaComponent(0.75)
        
        if screenSize.width <= 320 {
            label.font = UIFont.systemFont(ofSize: 21, weight: UIFont.Weight.bold)
        } else {
            label.font = UIFont.systemFont(ofSize: 27.5, weight: UIFont.Weight.bold)
        }
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "RECORD - \(highScore)"
        label.baselineAdjustment = .alignCenters
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()
    
    var topCoverView: UIView = {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        return view
    }()
    
    var bottomCoverView: UIView = {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        return view
    }()
    
    var leftCoverView: UIView = {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        return view
    }()
    
    var rightCoverView: UIView = {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        return view
    }()
    
    var topBorderView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        return view
    }()
    
    var bottomBorderView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        return view
    }()
    
    var leftBorderView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        return view
    }()
    
    var rightBorderView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        return view
    }()
    
    var gameBorderView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        return view
    }()

    var gameView: UIView = {
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    var progressView: UIProgressView = {
        let view = UIProgressView(progressViewStyle: .bar)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setProgress(1, animated: false)
        view.trackTintColor = UIColor.black
        view.tintColor = lightColor
        return view
    }()
    
    var touchView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 0
        view.layer.borderColor = UIColor.clear.cgColor
        view.isHidden = true
        return view
    }()
    
    var adViewHolder: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // FUNCTIONS

    @objc func move() {
        
        if canTimerRun == true {
            
            time += (1 / 120)
            
            if isPlaying == true && isPaused == false && isMenu == false {
                
                if time >= timeForStage {
                    handleGameOver()
                }
                
                progressView.setProgress(Float(1 - (time / timeForStage)), animated: true)
            }
            
            player.isSafe = false
            player.isPartSafe = false
            
            moveSafeBlocks()
            moveSafeLines()
            moveBlocks()
            moveLines()
            
            draw()
        }
    }
    
    func moveSafeBlocks() {
        
        for i in 0 ..< currentStage.safeBlocks.count {
            
            currentStage.safeBlocks[i].move()
            
            if currentStage.safeBlocks[i].didHitPlayer() == true {
                
                player.isSafe = true
                
            }
        }
    }
    
    func moveSafeLines() {
        
        for i in 0 ..< currentStage.safeLines.count {
            
            currentStage.safeLines[i].move()
            
            if currentStage.safeLines[i].didHitPlayer() == true {
                
                player.isSafe = true

            }
        }
    }
    
    func moveBlocks() {
        
        for i in 0 ..< currentStage.blocks.count {
            
            currentStage.blocks[i].move()
            
            if currentStage.blocks[i].didHitPlayer() == true && player.isSafe == false {
                
                handleGameOver()
                
            }
        }
    }
    
    func moveLines() {
        
        for i in 0 ..< currentStage.lines.count {
            
            currentStage.lines[i].move()
            
            if currentStage.lines[i].didHitPlayer() == true && player.isSafe == false {
                
                handleGameOver()
                
            }
        }
    }
    
    func handleGameOver() {
        
        touchView.isHidden = true
        
        scoreButton.isEnabled = false
        
        gameOverLabel.isHidden = false
        retryButton.isHidden = false
        
        isMenu = false
        isPlaying = false
        isPaused = false
        
        canTimerRun = false
        
        player.setup(stage: currentStage)
        goal.setup(stage: currentStage)
    }
    
    func draw() {
        
        removeAllSubviews()
        removeAllLines()
        
        goal.isSafe = false
        
        for i in 0 ..< currentStage.safeBlocks.count {
            
            if currentStage.safeBlocks[i].didHitGoal() == true {
                
                goal.isSafe = true
                
            }
        }
        
        for i in 0 ..< currentStage.safeLines.count {
            
            if currentStage.safeLines[i].didHitGoal() == true {
                
                goal.isSafe = true
                
            }
        }
        
        if goal.isSafe == false {
            gameView.addSubview(goal.view)
        }
        
        for b in currentStage.blocks {
            gameView.addSubview(b.view)
        }
        
        for l in currentStage.lines {
            gameView.layer.addSublayer(l.line)
        }
        
        if goal.isSafe == true {
            gameView.addSubview(goal.view)
        }
        
        gameView.addSubview(player.view)
        
        for b in currentStage.safeBlocks {
            gameView.addSubview(b.view)
        }
        
        for l in currentStage.safeLines {
            gameView.layer.addSublayer(l.line)
        }
        
//        gameView.addSubview(player.view2)
//        gameView.addSubview(player.view3)

    }

    func removeAllSubviews() {
        
        for view in gameView.subviews {
            
            view.removeFromSuperview()
            
        }
    }
    
    func removeAllLines() {
        
        if let lines = gameView.layer.sublayers {
            
            for line in lines {
                
                line.removeFromSuperlayer()
                
            }
        }
    }
    
    func handleNextStage() {
        
        score += 1
        
        speedChange += 0.01
        
        if timeForStage > 10 {
            timeForStage -= 0.5
        }
        
        if score > highScore {
            
            highScore = score
            
            let highScoreDefault = UserDefaults.standard
            highScoreDefault.setValue(highScore, forKey: "highScore")
            highScoreDefault.synchronize()
            
            highscoreLabel.text = "RECORD - \(highScore)"
        }
        
        scoreButton.setTitle("\(score)", for: .normal)
        
        repeat {
            
            currentStageIndex = Int(arc4random_uniform(UInt32(stages.count)))
            
        } while currentStageIndex == pastStageIndex
        
        pastStageIndex = currentStageIndex
        
        currentStage = stages[currentStageIndex]
        
        player.setup(stage: currentStage)
        goal.setup(stage: currentStage)
        
        canTouch = false
        
        time = 0

        progressView.setProgress(1, animated: false)
    }
    
    // TOUCHES
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if isPlaying == true && isPaused == false && isMenu == false {
            if let touch = touches.first {
                
                let position = touch.location(in: touchView)
                
                touchStartX = position.x
                touchStartY = position.y
                
                playerStartX = player.x
                playerStartY = player.y
            }
        }
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if isPlaying == true && isPaused == false && isMenu == false {
            if let touch = touches.first {
                
                if canTouch == true {
                    
                    let position = touch.location(in: touchView)

                    let newX = (playerStartX + (position.x - touchStartX) * moveScale)
                    let newY = (playerStartY + (position.y - touchStartY) * moveScale)
                    
                    player.setXY(x: newX, y: newY)
                    
                    if newX < Player.radius || newX > gameViewSideLength - Player.radius || newY < Player.radius || newY > gameViewSideLength - Player.radius {
                        handleGameOver()
                    }
                    
                    if player.didHitGoal() == true {
                        handleNextStage()
                    }
                    
                    player.isSafe = false
                    player.isPartSafe = false
                    
                    for i in 0 ..< currentStage.safeBlocks.count {
                        
                        if currentStage.safeBlocks[i].didHitPlayer() == true {
                            
                            player.isSafe = true
                            
                        }
                    }
                    
                    for i in 0 ..< currentStage.safeLines.count {
                        
                        if currentStage.safeLines[i].didHitPlayer() == true {
                            
                            player.isSafe = true
                            
                        }
                    }
                    
                    for i in 0 ..< currentStage.blocks.count {
                        
                        if currentStage.blocks[i].didHitPlayer() == true && player.isSafe == false {
                            
                            handleGameOver()
                            
                        }
                    }
                    
                    for i in 0 ..< currentStage.lines.count {
                        
                        if currentStage.lines[i].didHitPlayer() == true && player.isSafe == false {
                            
                            handleGameOver()
                            
                        }
                    }
                    
                }
                
            }
        }
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isPlaying == true && isPaused == false && isMenu == false {
            canTouch = true
        }
    }
    
    // VIEW DID LOAD
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let colorCountDefault = UserDefaults.standard
        
        if let savedColorCount = colorCountDefault.value(forKey: "colorCount") {
            colorCount = savedColorCount as! Int
        }
        
        switchColors()
        
        moveTimer = Timer.scheduledTimer(timeInterval: (1 / 120), target: self, selector: #selector(move), userInfo: nil, repeats: true)
        
        loadStages()
        
        let highScoreDefault = UserDefaults.standard
        
        if let savedHighScore = highScoreDefault.value(forKey: "highScore") {
            highScore = savedHighScore as! Int
        }
        
        scoreButton.setTitle("", for: .normal)

        highscoreLabel.text = "RECORD - \(highScore)"
        
        touchView.isHidden = true
            
        view.backgroundColor = backgroundColor
        
        view.addSubview(gameBorderView)
        view.addSubview(gameView)
        view.addSubview(scoreButton)
        view.addSubview(topCoverView)
        view.addSubview(bottomCoverView)
        view.addSubview(leftCoverView)
        view.addSubview(rightCoverView)
        view.addSubview(highscoreLabel)
        view.addSubview(topBorderView)
        view.addSubview(bottomBorderView)
        view.addSubview(leftBorderView)
        view.addSubview(rightBorderView)
        view.addSubview(progressView)
        view.addSubview(playButton)
        view.addSubview(quitButton)
        view.addSubview(retryButton)
        view.addSubview(titleLabel)
        view.addSubview(switchColorsButton)
        view.addSubview(resumeButton)
        view.addSubview(gameOverLabel)
        view.addSubview(touchView)
        view.addSubview(adViewHolder)
        
        setupGameBorderView()
        setupGameView()
        setupScoreButton()
        setupTopCoverView()
        setupBottomCoverView()
        setupLeftCoverView()
        setupRightCoverView()
        setupHighscoreLabel()
        setupTopBorderView()
        setupBottomBorderView()
        setupLeftBorderView()
        setupRightBorderView()
        setupProgressView()
        setupPlayButton()
        setupQuitButton()
        setupRetryButton()
        setupTitleLabel()
        setupSwitchColorsButton()
        setupResumeButton()
        setupGameOverLabel()
        setupTouchView()
        setupAdViewHolder()
    }
    
    // UI ANCHORS
    
    func setupGameBorderView() {
        gameBorderView.centerXAnchor.constraint(equalTo: gameView.centerXAnchor).isActive = true
        gameBorderView.widthAnchor.constraint(equalToConstant: gameViewSideLength + 10).isActive = true
        gameBorderView.heightAnchor.constraint(equalToConstant: gameViewSideLength + 10).isActive = true
        gameBorderView.centerYAnchor.constraint(equalTo: gameView.centerYAnchor).isActive = true
    }
    
    func setupGameView() {
        gameView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        gameView.widthAnchor.constraint(equalToConstant: gameViewSideLength).isActive = true
        gameView.heightAnchor.constraint(equalToConstant: gameViewSideLength).isActive = true
        
        if screenSize.width <= 320 {
            gameView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 45).isActive = true
        } else if screenSize.width == 375 && screenSize.height == 812 {
            gameView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        } else {
            gameView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80).isActive = true
        }
    }
    
    func setupScoreButton() {
        scoreButton.centerXAnchor.constraint(equalTo: gameView.centerXAnchor).isActive = true
        scoreButton.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scoreButton.bottomAnchor.constraint(equalTo: gameView.topAnchor).isActive = true
        
        if screenSize.width == 375 && screenSize.height == 812 {
            scoreButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        } else {
            scoreButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -10).isActive = true
        }
    }
    
    func setupTopCoverView() {
        topCoverView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topCoverView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        topCoverView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topCoverView.bottomAnchor.constraint(equalTo: scoreButton.topAnchor).isActive = true
    }
    
    func setupBottomCoverView() {
        bottomCoverView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bottomCoverView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        bottomCoverView.topAnchor.constraint(equalTo: gameBorderView.bottomAnchor).isActive = true
        bottomCoverView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func setupLeftCoverView() {
        leftCoverView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        leftCoverView.rightAnchor.constraint(equalTo: gameBorderView.leftAnchor).isActive = true
        leftCoverView.centerYAnchor.constraint(equalTo: gameBorderView.centerYAnchor).isActive = true
        leftCoverView.heightAnchor.constraint(equalTo: gameBorderView.heightAnchor).isActive = true
    }
    
    func setupRightCoverView() {
        rightCoverView.leftAnchor.constraint(equalTo: gameBorderView.rightAnchor).isActive = true
        rightCoverView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        rightCoverView.centerYAnchor.constraint(equalTo: leftCoverView.centerYAnchor).isActive = true
        rightCoverView.heightAnchor.constraint(equalTo: leftCoverView.heightAnchor).isActive = true
    }
    
    func setupHighscoreLabel() {
        highscoreLabel.topAnchor.constraint(equalTo: progressView.bottomAnchor).isActive = true
        highscoreLabel.bottomAnchor.constraint(equalTo: adViewHolder.topAnchor).isActive = true
        highscoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        highscoreLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
    
    func setupTopBorderView() {
        topBorderView.centerXAnchor.constraint(equalTo: gameBorderView.centerXAnchor).isActive = true
        topBorderView.widthAnchor.constraint(equalTo: gameBorderView.widthAnchor).isActive = true
        topBorderView.topAnchor.constraint(equalTo: gameBorderView.topAnchor).isActive = true
        topBorderView.bottomAnchor.constraint(equalTo: gameView.topAnchor).isActive = true
    }
    
    func setupBottomBorderView() {
        bottomBorderView.centerXAnchor.constraint(equalTo: gameBorderView.centerXAnchor).isActive = true
        bottomBorderView.widthAnchor.constraint(equalTo: gameBorderView.widthAnchor).isActive = true
        bottomBorderView.topAnchor.constraint(equalTo: gameView.bottomAnchor).isActive = true
        bottomBorderView.bottomAnchor.constraint(equalTo: gameBorderView.bottomAnchor).isActive = true
    }
    
    func setupLeftBorderView() {
        leftBorderView.centerYAnchor.constraint(equalTo: gameBorderView.centerYAnchor).isActive = true
        leftBorderView.heightAnchor.constraint(equalTo: gameBorderView.heightAnchor).isActive = true
        leftBorderView.leftAnchor.constraint(equalTo: gameBorderView.leftAnchor).isActive = true
        leftBorderView.rightAnchor.constraint(equalTo: gameView.leftAnchor).isActive = true
    }
    
    func setupRightBorderView() {
        rightBorderView.centerYAnchor.constraint(equalTo: gameBorderView.centerYAnchor).isActive = true
        rightBorderView.heightAnchor.constraint(equalTo: gameBorderView.heightAnchor).isActive = true
        rightBorderView.leftAnchor.constraint(equalTo: gameView.rightAnchor).isActive = true
        rightBorderView.rightAnchor.constraint(equalTo: gameBorderView.rightAnchor).isActive = true
    }
    
    func setupProgressView() {
        progressView.centerXAnchor.constraint(equalTo: gameView.centerXAnchor).isActive = true
        progressView.widthAnchor.constraint(equalToConstant: gameViewSideLength + 10).isActive = true
        progressView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        if screenSize.width <= 320 {
            progressView.topAnchor.constraint(equalTo: gameView.bottomAnchor, constant: 10).isActive = true
        } else {
            progressView.topAnchor.constraint(equalTo: gameView.bottomAnchor, constant: 30).isActive = true
        }
    }
    
    func setupPlayButton() {
        playButton.centerXAnchor.constraint(equalTo: progressView.centerXAnchor).isActive = true
        playButton.widthAnchor.constraint(equalTo: progressView.widthAnchor).isActive = true
        playButton.centerYAnchor.constraint(equalTo: progressView.centerYAnchor).isActive = true
        playButton.heightAnchor.constraint(equalTo: progressView.heightAnchor).isActive = true
    }
    
    func setupQuitButton() {
        quitButton.centerXAnchor.constraint(equalTo: playButton.centerXAnchor).isActive = true
        quitButton.widthAnchor.constraint(equalTo: playButton.widthAnchor).isActive = true
        quitButton.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        quitButton.heightAnchor.constraint(equalTo: playButton.heightAnchor).isActive = true
    }
    
    func setupRetryButton() {
        retryButton.centerXAnchor.constraint(equalTo: quitButton.centerXAnchor).isActive = true
        retryButton.widthAnchor.constraint(equalTo: quitButton.widthAnchor).isActive = true
        retryButton.centerYAnchor.constraint(equalTo: quitButton.centerYAnchor).isActive = true
        retryButton.heightAnchor.constraint(equalTo: quitButton.heightAnchor).isActive = true
    }
    
    func setupTitleLabel() {
        titleLabel.centerXAnchor.constraint(equalTo: gameView.centerXAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: gameView.widthAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: gameView.heightAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: gameView.centerYAnchor).isActive = true
    }
    
    func setupSwitchColorsButton() {
        switchColorsButton.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor).isActive = true
        switchColorsButton.widthAnchor.constraint(equalTo: titleLabel.widthAnchor).isActive = true
        switchColorsButton.heightAnchor.constraint(equalTo: titleLabel.heightAnchor).isActive = true
        switchColorsButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
    }
    
    func setupResumeButton() {
        resumeButton.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor).isActive = true
        resumeButton.widthAnchor.constraint(equalTo: titleLabel.widthAnchor).isActive = true
        resumeButton.heightAnchor.constraint(equalTo: titleLabel.heightAnchor).isActive = true
        resumeButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
    }
    
    func setupGameOverLabel() {
        gameOverLabel.centerXAnchor.constraint(equalTo: resumeButton.centerXAnchor).isActive = true
        gameOverLabel.widthAnchor.constraint(equalTo: resumeButton.widthAnchor).isActive = true
        gameOverLabel.heightAnchor.constraint(equalTo: resumeButton.heightAnchor).isActive = true
        gameOverLabel.centerYAnchor.constraint(equalTo: resumeButton.centerYAnchor).isActive = true
    }
    
    func setupTouchView() {
        touchView.topAnchor.constraint(equalTo: scoreButton.bottomAnchor).isActive = true
        touchView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        touchView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        touchView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    func setupAdViewHolder() {
        adViewHolder.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        adViewHolder.widthAnchor.constraint(equalToConstant: 320).isActive = true
        adViewHolder.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        if screenSize.width <= 320 || (screenSize.width == 375 && screenSize.height == 812) {
            adViewHolder.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        } else {
            adViewHolder.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: (320 - screenSize.width) / 2).isActive = true
        }
    }
    
    // COLOR FUNCTION
    
    @objc func switchColors() {
        
        if colorCount < 4 {
            colorCount += 1
        } else {
            colorCount = 0
        }
        
        let colorCountDefault = UserDefaults.standard
        colorCountDefault.setValue(colorCount - 1, forKey: "colorCount")
        colorCountDefault.synchronize()
        
        if colorCount == 0 {
            
            // BLUE
            
            lightColor = UIColor(red: 1/255 , green: 190/255 , blue: 255/255 , alpha: 1)
            color = UIColor(red: 0/255 , green: 128/255 , blue: 160/255 , alpha: 1)
            darkColor = UIColor(red: 0/255 , green: 75/255 , blue: 85/255 , alpha: 1)
            
        } else if colorCount == 1 {
            
            // YELLOW
            
            lightColor = UIColor(red: 255/255 , green: 190/255 , blue: 2/255 , alpha: 1)
            color = UIColor(red: 175/255 , green: 128/255 , blue: 1/255 , alpha: 1)
            darkColor = UIColor(red: 100/255 , green: 79/255 , blue: 1/255 , alpha: 1)
            
        } else if colorCount == 2 {
            
            // PURPLE
            
            lightColor = UIColor(red: 192/255 , green: 112/255 , blue: 241/255 , alpha: 1)
            color = UIColor(red: 129/255 , green: 75/255 , blue: 160/255 , alpha: 1)
            darkColor = UIColor(red: 74/255 , green: 44/255 , blue: 93/255 , alpha: 1)
        } else if colorCount == 3 {
            
            // GREEN
            
            lightColor = UIColor(red: 72/255 , green: 232/255 , blue: 145/255 , alpha: 1)
            color = UIColor(red: 48/255 , green: 152/255 , blue: 93/255 , alpha: 1)
            darkColor = UIColor(red: 29/255 , green: 92/255 , blue: 57/255 , alpha: 1)
        } else {
            
            // RED
            
            lightColor = UIColor(red: 255/255 , green: 67/255 , blue: 55/255 , alpha: 1)
            color = UIColor(red: 168/255 , green: 45/255 , blue: 37/255 , alpha: 1)
            darkColor = UIColor(red: 112/255 , green: 30/255 , blue: 24/255 , alpha: 1)
        }
        
        resumeButton.backgroundColor = color
        gameOverLabel.backgroundColor = color
        titleLabel.backgroundColor = color
        gameView.backgroundColor = color
        progressView.tintColor = lightColor
    }
}

// PUBLIC FUNCTIONS

public func distance(x1: CGFloat, y1: CGFloat, x2: CGFloat, y2: CGFloat) -> CGFloat {
    let xDist = x1 - x2
    let yDist = y1 - y2
    return CGFloat(sqrt((xDist * xDist) + (yDist * yDist)))
}
