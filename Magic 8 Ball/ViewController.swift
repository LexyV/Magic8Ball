//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Lexy on 5/7/18.
//  Copyright © 2018 Alexys Vanderford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //make array of ball images
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"];
    //random counter for word phrases
    var randomBallNumber = 0;

    @IBOutlet weak var eightBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage();
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButton(_ sender: UIButton) {
        
        newBallImage();
        
    }
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(4));
        
        eightBall.image = UIImage(named: ballArray[randomBallNumber]);
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        newBallImage();
        
    }

}

