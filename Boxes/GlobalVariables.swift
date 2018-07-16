//
//  GlobalVariables.swift
//  Boxes
//
//  Created by Collin Howard on 1/14/18.
//  Copyright © 2018 collinhoward. All rights reserved.
//

import UIKit
import GoogleMobileAds

// CONSTANTS

let screenSize = UIScreen.main.bounds

let gameViewSideLength: CGFloat = 300

//let moveScale: CGFloat = 1.125
//let moveScale: CGFloat = 1

// version 1.1
//let moveScale: CGFloat = 0.85

// version 1.2
let startMoveScale: CGFloat = 0.75

let finishRange: CGFloat = 2

// COLORS

//let backgroundColor = UIColor(red: 0/255 , green: 79/255 , blue: 1/255 , alpha: 1)

let backgroundColor = UIColor(red: 225/255 , green: 225/255 , blue: 225/255 , alpha: 1)

//let lightestGreen = UIColor(red: 1/255 , green: 255/255 , blue: 2/255 , alpha: 1)
//let lighterGreen = UIColor(red: 1/255 , green: 222/255 , blue: 2/255 , alpha: 1)
//let lightGreen = UIColor(red: 1/255 , green: 190/255 , blue: 2/255 , alpha: 1)
//let lightishGreen = UIColor(red: 1/255 , green: 158/255 , blue: 1/255 , alpha: 1)
//let green = UIColor(red: 0/255 , green: 128/255 , blue: 1/255 , alpha: 1)
//let darkishGreen = UIColor(red: 0/255 , green: 109/255 , blue: 1/255 , alpha: 1)
//let darkGreen = UIColor(red: 0/255 , green: 97/255 , blue: 1/255 , alpha: 1)
//let darkerGreen = UIColor(red: 0/255 , green: 79/255 , blue: 1/255 , alpha: 1)
//let darkestGreen = UIColor(red: 0/255 , green: 68/255 , blue: 1/255 , alpha: 1)

var lightColor = UIColor(red: 1/255 , green: 190/255 , blue: 2/255 , alpha: 1)
var color = UIColor(red: 0/255 , green: 128/255 , blue: 1/255 , alpha: 1)
var darkColor = UIColor(red: 0/255 , green: 79/255 , blue: 1/255 , alpha: 1)

// OBJECTS

var player = Player()
var goal = Goal()

var timerView = TimerView()

var stages = [Stage]()

// VARIABLES

var score: Int = 0
var highScore: Int = 0

var moveScale: CGFloat = startMoveScale

//var speedChange: CGFloat = 0.5

// version 1.1
//var speedChange: CGFloat = 0.35

// version 1.2
//var speedChange: CGFloat = 0.25

// version 1.2.3
var speedChange: CGFloat = 0.35

var didRemoveAds: Bool = false

var adCounter: Int = 0

var adViewHolder: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.black
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()

var adView: GADBannerView = {
    
    let view = GADBannerView(adSize: kGADAdSizeBanner)
    
    view.translatesAutoresizingMaskIntoConstraints = false
    view.adUnitID = "ca-app-pub-3580426533646075/3260379939"
    //        view.adUnitID = "ca-app-pub-3940256099942544/2934735716"
    
    return view
}()
