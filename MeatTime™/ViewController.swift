//
//  ViewController.swift
//  MeatTime™
//
//  Created by Ty Victorson on 2/21/17.
//  Copyright © 2017 Ty and Ler. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var nextLabel = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func grillin(_ sender: Any) {
        nextLabel = "Grillin'"
    }
    
    @IBAction func smokin(_ sender: Any) {
        nextLabel = "Smokin'"
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        if (identifier == "ToMeatVC") {
            let mvc = self.storyboard?.instantiateViewController(withIdentifier: "MeatVC") as! MeatSelection
            mvc.label = nextLabel
        }
    }
}

