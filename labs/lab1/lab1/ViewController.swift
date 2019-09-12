//
//  ViewController.swift
//  lab1
//
//  Created by Joshua Eric Aguilar Wynn on 9/11/19.
//  Copyright © 2019 Joshua Eric Aguilar Wynn. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var firstlab: UIImageView!

    @IBAction func chooseArt(_ sender: UIButton){
        if sender.tag == 1{
            firstlab.image = UIImage(named: "ImageTwo")
        }
        else if sender.tag == 2{
            firstlab.image = UIImage(named: "ImageThree")
        }
}




    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

