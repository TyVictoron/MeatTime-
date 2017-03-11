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
    @IBOutlet weak var selectedMeatImage: UIImageView!
    
    var meatLockerObject = MeatLocker()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        
        InfoLabel.text! = meatLockerObject.cookingStyle + ", " + meatLockerObject.selectedMeat
        
        if (meatLockerObject.selectedMeat == "Beef")
        {
            selectedMeatImage.image = UIImage(named:"rawBeefButton.png")
            InfoLabel.text! = "Ribeye"
        }
        else if (meatLockerObject.selectedMeat == "Pork")
        {
            selectedMeatImage.image = UIImage(named:"RawPorkButton.png")
            InfoLabel.text! = "Chops"
        }
        else
        {
            selectedMeatImage.image = UIImage(named:"rawChickenButton.png")
            InfoLabel.text! = "Breast"
        }
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
            InfoLabel.text! = meatLockerObject.BeefCuts[row]
            meatLockerObject.selectedCut = meatLockerObject.BeefCuts[row]
            
        }
        else if (meatLockerObject.selectedMeat == "Pork")
        {
            InfoLabel.text! = meatLockerObject.PorkCuts[row]
            meatLockerObject.selectedCut = meatLockerObject.PorkCuts[row]
        }
        else
        {
            InfoLabel.text! = meatLockerObject.ChickenCuts[row]
            meatLockerObject.selectedCut = meatLockerObject.ChickenCuts[row]
        }
    }
    
    @IBAction func letsCookButton(_ sender: UIButton)
    {
        nextViewController()
    }
    
    func nextViewController()
    {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "timerPage") as! TimerInstructionView
        vc.meatLockerObject = self.meatLockerObject
        self.present(vc, animated: true, completion: nil)
    }
}
