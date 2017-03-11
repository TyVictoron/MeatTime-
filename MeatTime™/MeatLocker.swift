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
    
    var beefInstructionGrilling = "About 20 minutes before grilling, remove the steaks from the refrigerator and let sit, covered, at room temperature. Heat your grill to high. Brush the steaks on both sides with oil and season liberally with salt and pepper. Place the steaks on the grill and cook until golden brown and slightly charred"
    
    var beefInstructionSmoking = "Warm your smoker to reach about 230 degrees F, and put the steak(s) on the grill. In many smokers, a water tray is necessary to help fuel the smoke. 3. The general rule of thumb is that for every 1.5 lbs. of meat, an hour of smoking is necessary; however the real determinant is the temperature"
    
    var ChickenCuts : [String] = ["Breast", "Legs", "Wings","Thighs","Whole"]
    var ChickenCutsTemps : [String] = ["160","165","175","165","170"]
   
    var chickenInstructionGrilling = "Place the chicken on the hot side of the grate, directly above the coals. Sear for about three to four minutes per side, turning only once, until golden brown. If the grill flares up, temporarily move the chicken away from the coals. When properly browned, move them to the warm, or indirect, side of the grate. Replace the lid and, if using a grill thermometer, bring the temperature up to 350°F. Then get the chicken to the desired temperature"
    
    var chickenInstructionSmoking = "Place the chicken in the smoker and close door.While smoking occasionally adjust the vents to keep the cookingtemperature between 250°F-300°F (less air to cool the temperature, more to increase the heat). Two or three times during the smoking, add a handful of wood cuttings or chips on top of the lit charcoal. (Don't do this too much or else the meat will be overly smoky. Once every hour - hour and half is usually perfect).Cook until the thickest part of the breast meat is Done"
    
    
    var PorkCuts : [String] = ["Chops", "Bacon", "Ribs", "Loin", "Shoulder", "Ham"]
    var PorkCutTemps : [String] = ["140","N/A","135","145","145","120"]
    
    var porkInstructionGrilling = "Brush and oil the grill grate. Place the pork chops on the grill over the direct-heat area and sear, turning once, until nicely grill-marked on both sides, 2 to 3 minutes per side. Move the chops to the indirect-heat area and cover the grill, then wait for the pork to reach the instructed temperature."
    
    var porkInstructionSmoking = "Heat your smoker to 250 degrees F. Then place your meat in after giving it a generous rub of seasonings. A general rule is about 1.5 hours of smoking per pound. Make sure to measure the temperature and minimize the amounts of times you open your smoker."
    
    var cookingStyle : String = ""
    
    var selectedMeat : String = ""
    var selectedCut : String = ""
    var selectedCutRow : Int = 0
    var selectedMeatTemp : String = ""
}
