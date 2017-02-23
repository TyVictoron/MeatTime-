//
//  MeatSelection.swift
//  MeatTime™
//
//  Created by tyler siemon on 2/22/17.
//  Copyright © 2017 Ty and Ler. All rights reserved.
//

import UIKit

class MeatSelection: UIViewController
{
    @IBOutlet weak var labelLabel: UILabel!
    
    var label = ""
    
    var meatLockerObject = MeatLocker()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        labelLabel.text = label
    }
}
