//
//  SelectedCutView.swift
//  MeatTime™
//
//  Created by Ty Victorson on 3/3/17.
//  Copyright © 2017 Ty and Ler. All rights reserved.
//

import UIKit

class SelectedCutView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }

    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    var meatLockerObject = MeatLocker()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        
        InfoLabel.text! = meatLockerObject.cookingStyle + ", " + meatLockerObject.selectedMeat 
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if (meatLockerObject.selectedMeat == "Beef")
        {
            return meatLockerObject.BeefCuts.count
        }
        else if (meatLockerObject.selectedMeat == "Pork")
        {
            return meatLockerObject.PorkCuts.count
        }
        else
        {
            return meatLockerObject.ChickenCuts.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if (meatLockerObject.selectedMeat == "Beef")
        {
            return meatLockerObject.BeefCuts[row]
        }
        else if (meatLockerObject.selectedMeat == "Pork")
        {
            return meatLockerObject.PorkCuts[row]
        }
        else
        {
            return meatLockerObject.ChickenCuts[row]
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if (meatLockerObject.selectedMeat == "Beef")
        {
            InfoLabel.text! = meatLockerObject.cookingStyle + ", " + meatLockerObject.selectedMeat + ", " + meatLockerObject.BeefCuts[row]
        }
        else if (meatLockerObject.selectedMeat == "Pork")
        {
            InfoLabel.text! = meatLockerObject.cookingStyle + ", " + meatLockerObject.selectedMeat + ", " + meatLockerObject.PorkCuts[row]
        }
        else
        {
            InfoLabel.text! = meatLockerObject.cookingStyle + ", " + meatLockerObject.selectedMeat + ", " + meatLockerObject.ChickenCuts[row]
        }
    }
}
