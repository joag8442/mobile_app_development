//
//  ViewController.swift
//  davinci_inclass
//
//  Created by Joshua Eric Aguilar Wynn on 9/3/19.
//  Copyright © 2019 Joshua Eric Aguilar Wynn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var davinci: UIImageView!
    
    @IBAction func chooseArt(_ sender: UIButton){
        if sender.tag == 1{
            davinci.image = UIImage(named: "MonaLisa")
        }
        else if sender.tag == 2{
            davinci.image = UIImage(named: "Virtruvian")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()}
        // Do any additional setup after loading the view.





}
