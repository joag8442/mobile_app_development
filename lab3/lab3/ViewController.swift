//
//  ViewController.swift
//  lab3
//
//  Created by Joshua Eric Aguilar Wynn on 9/24/19.
//  Copyright © 2019 Joshua Eric Aguilar Wynn. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var labImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var fontType: UILabel!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBOutlet weak var fontSwitch: UISwitch!
    
    func updateImage(){
        if imageControl.selectedSegmentIndex == 0{
            titleLabel.text="one color"
            labImage.image=UIImage(named: "lab3second")
        } else if imageControl.selectedSegmentIndex == 1{
            titleLabel.text="another color"
            labImage.image=UIImage(named: "lab3third")
        }
    }
    
    func updateCaps(){
        if capitalSwitch.isOn{
            titleLabel.text=titleLabel.text?.uppercased()
        } else {
            titleLabel.text=titleLabel.text?.lowercased()

        }
    }
    
    func updateType(){
        if fontSwitch.isOn{
            fontType.textColor=UIColor.red
        } else {
            fontType.textColor=UIColor.black
        }
    }
    
    @IBAction func changeInfo(_ sender: UISegmentedControl){
        updateImage()
        updateCaps()
    }
    @IBAction func updateFont(_ sender: UISwitch){
        updateCaps()
    }
    @IBAction func changeFontSize(_ sender: UISlider){
        let fontSize=sender.value //float
        fontSizeLabel.text=String(format: "%.0f", fontSize) //convert float
        let fontSizeCGFloat=CGFloat(fontSize)
        titleLabel.font=UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    @IBAction func changeFontColor(_ sender: UISwitch){
        updateType()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

