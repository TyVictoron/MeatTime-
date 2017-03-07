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
    
    var BeefCuts : [String] = ["Ribeye", "Top Sirloin", "Brisket","Flank","New York","T-Bone","Filet Mignon","Chuck","Ribs"]
    var BeefCutTimes : [Int] = []
    var BeefInternalTemp : [Int] = []
    
    var ChickenCuts : [String] = ["chicken1", "chicken2", "chicken3"]
    var ChickenCutsTimes : [Int] = []
    var ChickenInternalTemp : [Int] = []
    
    var PorkCuts : [String] = ["pork1", "pork2", "pork3"]
    var PorkCutTimes : [Int] = []
    var PorkInternalTemp : [Int] = []
    
    var cookingStyle : String = ""
    
    var selectedMeat : String = ""
    var selectedCut : String = ""
}
