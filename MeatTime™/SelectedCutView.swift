//
//  SelectedCutView.swift
//  MeatTime™
//
//  Created by Ty Victorson on 3/3/17.
//  Copyright © 2017 Ty and Ler. All rights reserved.
//

import UIKit

class SelectedCutView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }


    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    var meatLockerObject = MeatLocker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return meatLockerObject.BeefCuts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return meatLockerObject.BeefCuts[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        InfoLabel.text! = meatLockerObject.cookingStyle + meatLockerObject.selectedMeat + meatLockerObject.BeefCuts[row]
    }
}
