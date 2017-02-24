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
        meatLockerObject.cookingStyle = "Grillin'"
        nextViewController()
    }
    
    @IBAction func smokin(_ sender: UIButton)
    {
        meatLockerObject.cookingStyle = "Smokin'"
        nextViewController()    
    }
    
    func nextViewController()
    {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MeatVC") as! MeatSelection
        vc.meatLockerObject = self.meatLockerObject
        self.present(vc, animated: true, completion: nil)
    }
}

