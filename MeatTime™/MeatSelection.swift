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
        return 1
    }

    @IBOutlet weak var labelLabel: UILabel! //top label
    
    @IBOutlet weak var MeatWheelBottom: UIPickerView!
    @IBOutlet weak var MeatWheelTop: UIPickerView!
    
    var meatLockerObject = MeatLocker()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        labelLabel.text = meatLockerObject.cookingStyle
        MeatWheelTop.dataSource = self
        MeatWheelTop.delegate = self
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return meatLockerObject.AnimalMeats.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return meatLockerObject.AnimalMeats[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelLabel.text = meatLockerObject.AnimalMeats[row]
    }
    
    
}
