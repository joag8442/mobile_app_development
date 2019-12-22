//
//  ViewController2.swift
//  extracreditios
//
//  Created by Joshua Eric Aguilar Wynn on 12/21/19.
//  Copyright © 2019 Joshua Eric Aguilar Wynn. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textLabel2: UILabel!
    
    var passedData = String()
    var result = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = passedData
        textLabel2.text = result

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
