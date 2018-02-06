//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Anderson Cardoso on 2/6/18.
//  Copyright © 2018 Anderson Cardoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // declare variable the represents an element innthe view.
    @IBOutlet weak var imageView: UIImageView!
    
    // create variable to store random Answer
    var randomAnswer : Int = 0
    
    //create array to hold each various states of the element.
    let answerArray = ["ball1", "ball2" , "ball3", "ball4", "ball5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // vreate button in order to create an event change.
    @IBAction func updateAnswer(_ sender: UIButton) {
        
        changeAnswer()
    }
    
    func changeAnswer() {
        
        randomAnswer = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: answerArray[randomAnswer])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?){
        
        changeAnswer()
    }

}

