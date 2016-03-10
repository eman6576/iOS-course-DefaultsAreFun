//
//  ViewController.swift
//  DefaultsAreFun
//
//  Created by Emanuel  Guerrero on 3/9/16.
//  Copyright © 2016 Project Omicron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var favoriteLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let color = NSUserDefaults.standardUserDefaults().valueForKey("color") as? String {
            favoriteLabel.text = "Favorite Color: \(color)"
        } else {
            favoriteLabel.text = "Pick a color!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func redTapped(sender: UIButton) {
        favoriteLabel.text = "Favorite Color: Red"
        NSUserDefaults.standardUserDefaults().setValue("Red", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func yellowTapped(sender: UIButton) {
        favoriteLabel.text = "Favorite Color: Yellow"
        NSUserDefaults.standardUserDefaults().setValue("Yellow", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func blueTapped(sender: UIButton) {
        favoriteLabel.text = "Favorite Color: Blue"
        NSUserDefaults.standardUserDefaults().setValue("Blue", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
}

