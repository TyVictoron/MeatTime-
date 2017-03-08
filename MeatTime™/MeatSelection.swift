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
    var contents : [[String]] = []
    var meatLockerObject = MeatLocker()
    @IBOutlet weak var typeImage: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if (meatLockerObject.cookingStyle == "Grillin'") {
            typeImage.image = UIImage(named: "GrillinButton.png")
        } else {
            typeImage.image = UIImage(named: "SmokinButton.png")
        }
    }
    
    @IBAction func beefButton(_ sender: UIButton)
    {
        meatLockerObject.selectedMeat = "Beef"
        nextViewController()
    }
    
    @IBAction func porkButton(_ sender: UIButton)
    {
        meatLockerObject.selectedMeat = "Pork"
        nextViewController()
    }
    
    @IBAction func chickenButton(_ sender: UIButton)
    {
        meatLockerObject.selectedMeat = "Chicken"
        nextViewController()
    }
    
    func nextViewController()
    {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "cutVC") as! SelectedCutView
        vc.meatLockerObject = self.meatLockerObject
        self.present(vc, animated: true, completion: nil)
    }
    
}
