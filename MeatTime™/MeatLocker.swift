//
//  MeatLocker.swift
//  MeatTime™
//
//  Created by tyler siemon on 2/22/17.
//  Copyright © 2017 Ty and Ler. All rights reserved.
//

import UIKit

class MeatLocker: NSObject
{
    var AnimalMeats : [String] = ["Beef","Chicken","Pork"]
    
    var BeefCuts : [String] = ["beef1", "beef2", "beef3"]
    var BeefCutTimes : [Int] = []
    var BeefInternalTemp : [Int] = []
    
    var ChickenCuts : [String] = ["chicken1", "chicken1", "chicken1"]
    var ChickenCutsTimes : [Int] = []
    var ChickenInternalTemp : [Int] = []
    
    var PorkCuts : [String] = ["pork1", "pork1", "pork1"]
    var PorkCutTimes : [Int] = []
    var PorkInternalTemp : [Int] = []
    
    var cookingStyle : String = ""
    var selectedMeat : String = ""
}
