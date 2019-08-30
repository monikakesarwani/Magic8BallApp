//
//  ViewController.swift
//  Magic8BallApp
//
//  Created by Anil on 8/26/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var radomNumberIndex = 0
    
    var randomBallNumber: Int = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0...4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
}

