//
//  TimerInstructionView.swift
//  MeatTime™
//
//  Created by tyler siemon on 2/22/17.
//  Copyright © 2017 Ty and Ler. All rights reserved.
//

import UIKit

// accesses the web and pulls times and instructions
class TimerInstructionView: UIViewController
{
    var timer = Timer()
    var time = 0
    var time2 = 0
    var time3 = 0
    var meatLockerObject = MeatLocker()
    @IBOutlet weak var startTimerNuttonOutlet: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var imageOfMeat: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func startTimerButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerInstructionView.update), userInfo: nil, repeats: true)
    }
    
    func update() {
        time += 1
        if (time == 61) {
            time2 += 1
            time = 0
        } else if (time2 == 61) {
            time3 += 1
            time2 = 0
        }
        timerLabel.text =  "\(time3):\(time2):\(time)"
    }
    
    @IBAction func cameraButton(_ sender: Any) {
        
    }
    
}
