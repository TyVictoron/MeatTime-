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
    var BeefCutTemps : [String] = ["140","135","195","155","145","145","140","160"]
    var beefInstructionGrilling = ""
    var beefInstructionSmoking = ""
    
    var ChickenCuts : [String] = ["Breast", "Legs", "Wings","Thighs","Whole"]
    var ChickenCutsTemps : [String] = ["160","165","175","165","170"]
    var chickenInstructionGrilling = ""
    var chickenInstructionSmoking = ""
    
    
    var PorkCuts : [String] = ["Chops", "Bacon", "Ribs", "Loin", "Shoulder", "Ham"]
    var PorkCutTemps : [String] = ["140","N/A","135","145","145","120"]
    var porkInstructionGrilling = ""
    var porkInstructionSmoking = ""
    
    var cookingStyle : String = ""
    
    var selectedMeat : String = ""
    var selectedCut : String = ""
}
