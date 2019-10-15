//
//  ViewController.swift
//  midtermcommute
//
//  Created by Joshua Eric Aguilar Wynn on 10/15/19.
//  Copyright © 2019 Joshua Eric Aguilar Wynn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var commuteMiles: UITextField!
    @IBOutlet weak var gasAvailable: UILabel!
    @IBOutlet weak var gasStepper: UIStepper!
    @IBOutlet weak var modeOfTransport: UISegmentedControl!
    @IBOutlet weak var commuteTime: UILabel!
    @IBOutlet weak var gasNeeded: UILabel!
    @IBOutlet weak var stepperIcon: UIImageView!
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func updateGas( _ sender: UIStepper){
        if gasStepper.value == 1{
            gasAvailable.text = "1 Gallon"
        } else {
            gasAvailable.text = String(format: "%.0f", gasStepper.value) + " Gallons"
        }
    }
    
    @IBAction func transportIcon(_ sender: UISegmentedControl){
        if modeOfTransport.selectedSegmentIndex == 0 {
            stepperIcon.image=UIImage(named: "car")
        } else if modeOfTransport.selectedSegmentIndex == 1 {
            stepperIcon.image=UIImage(named: "bus")
        } else if modeOfTransport.selectedSegmentIndex == 2 {
            stepperIcon.image=UIImage(named: "bike")
        }
    }
    
    func updateGasTotals(){
        var time:Float
        var gas:Float
        
        if commuteMiles.text!.isEmpty {
            time = 0.0
        } else {
            time = Float(commuteMiles.text!)!
        }
        if (gasAvailable != nil)   {
            gas = 0.0
        } else {
            gas = Float(gasNeeded.text!)!
        }
        let gasLeft = gasStepper.value
        let total = time+gas
        var milesTilEmpty : Float = 0.0
        if gasLeft > 0 {
            milesTilEmpty = total / Float(gasLeft)
        } else {
            let alert=UIAlertController(title: "Warning", message: "You do not have enough gas for the commute", preferredStyle: UIAlertController.Style.alert)
            
        
            let okAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateGasTotals()
    }
    override func viewDidLoad() {
        commuteMiles.delegate=self
       
        
        super.viewDidLoad()
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector:
            #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector:
            #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        let tap: UITapGestureRecognizer =
            UITapGestureRecognizer(target: self, action:
                #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    @objc func keyboardWillHide(notification: NSNotification) {
        if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue)
            != nil {
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y = 0
            }
        }
    }
}





