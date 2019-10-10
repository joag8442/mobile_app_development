//
//  ViewController.swift
//  project1
//
//  Created by Joshua Eric Aguilar Wynn on 10/8/19.
//  Copyright © 2019 Joshua Eric Aguilar Wynn. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var pickGenre: UIPickerView!
    @IBOutlet weak var labelSong: UILabel!
    
    let genre = ["rap: very light(104-114)", "rap: light(114-133)", "rap: moderate(133-152)", "rap: hard(152-172)", "rap: maximum(172-190)" , "edm: very light(104-114)", "edm: light(114-133)", "edm: moderate(133-152)", "edm: hard(152-172)", "edm: maximum(172-190)", "rock: very light(104-114)", "rock: light(114-133)", "rock: moderate(133-152)", "rock: hard(152-172)", "rock: maximum(172-190)", "pop: very light(104-114)", "pop: light(114-133)", "pop: moderate(133-152)", "pop: hard(152-172)", "pop: maximum(172-190)"]
  
    let rapVeryLight = ["Stand Up - Ludachris", "Own It - Drake", "Man Of The Year - Schoolboy Q", ]
    let rapLight = ["Just Lose It - Eminem", "The New Workout Plan - Kanye West", "I Get Money - 50 Cent"]
    let rapModerate = ["Feel Good Inc - Gorrilaz", "All of The Lights - Kanye West", "Girls - Beastie Boys"]
    let rapHard = ["Ambition - Wale", "Can't Tell Me Nothing - Kanye West", "Many Men - 50 Cent"]
    let rapMaximum = ["Mosh - Eminem", "0-100 - Drake", "Rollin' - Kid Ink"]
    let edmVeryLight = ["Body Rock - Moby", "So Insane - Discovery", "Reptile's Theme - Skrillex"]
    let edmLight = ["Sunshowers - M.I.A.", "Latch - Disclosure", "Galaxies - Owl City"]
    let edmModerate = ["Loyal - Odezza", "Cozza Frenzy - Bassnecter", "Rings - Tycho"]
    let edmHard = ["La Brisa - Big Wild", "Starshine - Honeyroot", "Stroke - Run Level Zero"]
    let edmMaximum = ["The Wheel - SOHN", "Falling - Afterlife", "Can't Hide - Whethan"]
    let rockVeryLight = ["Eye Of The Tiger - Survivor", "Another One Bites The Dust - Queen", "Breakfast At Tiffany's - Deep Blue Something"]
    let rockLight = ["Welcome To The Jungle - Guns N' Roses", "Enter Sandman - Metallica", "Start Me Up - The Rolling Stones"]
    let rockModerate = ["Any Way You Want It - Journey", "Hotel California - Eagles", "You Really Got Me - Van Halen"]
    let rockHard = ["Everlong - Foo Fighters", "Paint It Black - The Rolling Stones", "Crazy - Aerosmith"]
    let rockMaximum = ["Santeria - Sublime", "Rock and Roll - Led Zeppelin", "Last Resort - Papa Roach"]
    let popVeryLight = ["Wannabe - Spice Girls", "Hollaback Girl - Gwen Stefani", "Let's Get It Started - The Black Eyed Peas"]
    let popLight = ["Jenny From The Block - Jennifer Lopez", "Get On The Floor - Michael Jackson", "Born This Way - Lady Gaga"]
    let popModerate = ["Drunk In Love - Beyonce", "Beat It- Michael Jackson", "Because Of You - Kelly Clarkson"]
    let popHard = ["Landslide - Fleetwood Mac", "Pink + White - Frank Ocean", "Truth Hurts - Lizzo"]
    let popMaximum = ["Me! - Taylor Swift", "Friday - Rebecca Black", "Rich Kids - Washington"]
    @IBAction func getMusic (){
    return ()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genre[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genre.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        labelSong.text = ("Just Lose It - Eminem, The New Workout Plan - Kanye West, I Get Money - 50 Cent") as String
    }
    
    func pickerView(_ pickerView: UIPickerView, selectedRowInComponent: String ){
        return ()
    }
    
    

  
    

    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

