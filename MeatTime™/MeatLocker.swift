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
    
    var BeefCuts : [String] = ["tyler cut", "ty cut", "mathean cut"]
    var BeefCutTimes : [Int] = []
    var BeefInternalTemp : [Int] = []
    
    var ChickenCuts : [String] = ["tyler cut", "ty cut", "mathean cut"]
    var ChickenCutsTimes : [Int] = []
    var ChickenInternalTemp : [Int] = []
    
    var PorkCuts : [String] = ["tyler cut", "ty cut", "mathean cut"]
    var PorkCutTimes : [Int] = []
    var PorkInternalTemp : [Int] = []
    
    var cookingStyle : String = ""
}
