//
//  MeatSelection.swift
//  MeatTime™
//
//  Created by tyler siemon on 2/22/17.
//  Copyright © 2017 Ty and Ler. All rights reserved.
//

import UIKit

class MeatSelection: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate
{
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return contents.count
    }

    var contents : [[String]] = []
    @IBOutlet weak var labelLabel: UILabel! //top label
    
    @IBOutlet weak var MeatWheelTop: UIPickerView!
    
    var meatLockerObject = MeatLocker()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        labelLabel.text = meatLockerObject.cookingStyle
        
        contents = [meatLockerObject.AnimalMeats, meatLockerObject.BeefCuts]
        
        MeatWheelTop.dataSource = self
        
        MeatWheelTop.delegate = self
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return contents.count
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return meatLockerObject.AnimalMeats.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return contents[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        labelLabel.text = meatLockerObject.AnimalMeats[row] + " "
        
        if (labelLabel.text == "Chicken")
        {
            contents = [meatLockerObject.AnimalMeats, meatLockerObject.ChickenCuts]
            labelLabel.text! = meatLockerObject.AnimalMeats[0] + " " + meatLockerObject.ChickenCuts[row]
        }
        
        if (labelLabel.text == "Beef")
        {
            contents = [meatLockerObject.AnimalMeats, meatLockerObject.BeefCuts]
            labelLabel.text! = meatLockerObject.AnimalMeats[1] + " " + meatLockerObject.BeefCuts[row]
        }
        
        if (labelLabel.text == "Pork")
        {
            contents = [meatLockerObject.AnimalMeats, meatLockerObject.PorkCuts]
            labelLabel.text! = meatLockerObject.AnimalMeats[2] + " " + meatLockerObject.PorkCuts[row]
        }
    }
    
    
}
