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
    var meatLockerObject = MeatLocker()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func grillin(_ sender: Any)
    {
        
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ToMeatVC") as! MeatSelection
        vc.meatLockerObject = self.meatLockerObject
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func smokin(_ sender: Any)
    {
        
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ToMeatVC") as! MeatSelection
        vc.meatLockerObject = self.meatLockerObject
        self.present(vc, animated: true, completion: nil)
    }
}

