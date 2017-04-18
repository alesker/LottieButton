//
//  ViewController.swift
//  LottieButton
//
//  Created by alesker on 03/27/2017.
//  Copyright (c) 2017 alesker. All rights reserved.
//

import UIKit
import LottieButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = LottieButton()
        button.animationName = "TwitterHeart"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

