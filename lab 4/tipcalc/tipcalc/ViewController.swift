//
//  ViewController.swift
//  tipcalc
//
//  Created by Joshua Eric Aguilar Wynn on 9/26/19.
//  Copyright © 2019 Joshua Eric Aguilar Wynn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var rentAmount: UITextField!
    @IBOutlet weak var foodAmount: UITextField!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var peopleStepper: UIStepper!
    @IBOutlet weak var tipDue: UILabel!
    @IBOutlet weak var totalDue: UILabel!
    @IBOutlet weak var totalDuePerPerson: UILabel!
    
    //method
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func updatePeople(_ sender: UIStepper){
        if peopleStepper.value == 1{
            peopleLabel.text = "1 person"
        } else {
            peopleLabel.text = String(format: "%.0f", peopleStepper.value) + " people"
            
        }
    }
    func updateTipTotals(){
        var amount:Float
        var food:Float
        
        if rentAmount.text!.isEmpty {
            amount = 0.0
        } else {
            amount = Float(rentAmount.text!)!
        }
        if foodAmount.text!.isEmpty {
            food = 0.0
        } else {
            food = Float(foodAmount.text!)!
        }
        let numberOfPeople = peopleStepper.value
        let total = amount+food
        var personTotal : Float = 0.0
        if numberOfPeople > 0 {
            personTotal = total / Float(numberOfPeople)
        } else {
            let alert=UIAlertController(title: "Warning", message: "The number of people cannot equal 0", preferredStyle: UIAlertController.Style.alert)

            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(cancelAction)
            let okAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {action in
                self.peopleStepper.value = 1
                self.peopleLabel.text? = "1 person"
                self.updateTipTotals()
            })
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle=NumberFormatter.Style.currency
        totalDue.text=currencyFormatter.string(from: NSNumber(value: total))
        totalDuePerPerson.text=currencyFormatter.string(from: NSNumber(value: personTotal))
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateTipTotals()
    }
    //delegate
    override func viewDidLoad() {
        rentAmount.delegate=self
        foodAmount.delegate=self
        
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



