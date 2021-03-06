//
//  TimerInstructionView.swift
//  MeatTime™
//
//  Created by tyler siemon on 2/22/17.
//  Copyright © 2017 Ty and Ler. All rights reserved.
//

import UIKit

// accesses the web and pulls times and instructions
class TimerInstructionView: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    var timer = Timer()
    var time = 0
    var time2 = 0
    var time3 = 0
    
    var temp = ""
    var meatLockerObject = MeatLocker()
    
    var amountToCheck = 0
    
    @IBOutlet weak var startTimerNuttonOutlet: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var imageOfMeat: UIImageView!
    @IBOutlet weak var instructionsText: UITextView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setInstructions()   
    }
    
    @IBAction func startTimerButton(_ sender: Any) {
        if (timer.isValid == true) {
            timer.invalidate()
            startTimerNuttonOutlet.setImage(UIImage(named: "StartButton"), for: .normal)
        } else {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerInstructionView.update), userInfo: nil, repeats: true)
            startTimerNuttonOutlet.setImage(UIImage(named: "StopButton"), for: .normal)
        }
    }
    
    func update() {
        time += 1
        if (time == 61) {
            time2 += 1
            time = 0
        } else if (time2 == 61) {
            time3 += 1
            time2 = 0
        }
        timerLabel.text =  "\(time3):\(time2):\(time)"
    }
    
    @IBAction func cameraButton(_ sender: Any) {
        let ac = UIAlertController(title: "Add and Save Image From", message: nil, preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Photo Library", style: .default) { _ in
            self.getImage()
        })
        
        ac.addAction(UIAlertAction(title: "Camera", style: .default) { _ in
            self.useCam()
        })
        
        present(ac, animated: true)
    }
    
    func getImage() {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
    func useCam() {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)
        {
            let picker = UIImagePickerController()
            picker.allowsEditing = false
            picker.sourceType = UIImagePickerControllerSourceType.camera
            picker.cameraCaptureMode = .photo
            picker.modalPresentationStyle = .fullScreen
            present(picker,animated: true,completion: nil)
        }
        else
        {
            noCamera()
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            imageOfMeat.image = image
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        }
        else
        {
            print("Something went wrong")
        }
        
        self.dismiss(animated: true, completion: nil)
    }

    
    func noCamera(){
        let alertVC = UIAlertController(title: "No Camera", message: "Sorry, this device has no camera", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style:.default, handler: nil)
        alertVC.addAction(okAction)
        present(alertVC, animated: true, completion: nil)
    }
    
    func setInstructions()
    {
        if (meatLockerObject.selectedMeat == "Chicken" && meatLockerObject.cookingStyle == "Grillin'")
        {
            instructionsText.text! = meatLockerObject.chickenInstructionGrilling + " Make sure to cook the meat to a temperature of at least " + meatLockerObject.selectedMeatTemp
        }
        else if (meatLockerObject.selectedMeat == "Chicken" && meatLockerObject.cookingStyle == "Smokin'")
        {
            instructionsText.text! = meatLockerObject.chickenInstructionSmoking + " Make sure to cook the meat to a temperature of at least " + meatLockerObject.selectedMeatTemp
        }
        else if (meatLockerObject.selectedMeat == "Beef" && meatLockerObject.cookingStyle == "Grillin'")
        {
            instructionsText.text! = meatLockerObject.beefInstructionGrilling + " Make sure to cook the meat to a temperature of at least " + meatLockerObject.selectedMeatTemp
        }
        else if (meatLockerObject.selectedMeat == "Beef" && meatLockerObject.cookingStyle == "Smokin'")
        {
            instructionsText.text! = meatLockerObject.beefInstructionSmoking + " Make sure to cook the meat to a temperature of at least " + meatLockerObject.selectedMeatTemp
        }
        else if (meatLockerObject.selectedMeat == "Pork" && meatLockerObject.cookingStyle == "Grillin'")
        {
            instructionsText.text! = meatLockerObject.porkInstructionGrilling + " Make sure to cook the meat to a temperature of at least " + meatLockerObject.selectedMeatTemp
        }
        else if (meatLockerObject.selectedMeat == "Pork" && meatLockerObject.cookingStyle == "Smokin'")
        {
            instructionsText.text! = meatLockerObject.porkInstructionSmoking + " Make sure to cook the meat to a temperature of at least " + meatLockerObject.selectedMeatTemp
        }
    }
}
