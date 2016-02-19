//
//  ViewController.swift
//  Flowers
//
//  Created by JANA KEPKOVA on 12/2/15.
//  Copyright © 2015 JANA KEPKOVA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var WelcomeButton: UIButton!
    @IBOutlet weak var BlueFlowerImage: UIImageView!
    @IBOutlet weak var PinkFlowerImage: UIImageView!
    @IBOutlet weak var HideBlueFlowerButton: UIButton!
    @IBOutlet weak var HidePinkFlowerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func welcome(sender: AnyObject) {
        
        HideBlueFlowerButton.hidden = false
        BlueFlowerImage.hidden = false
        
        HidePinkFlowerButton.hidden = false
        PinkFlowerImage.hidden = false
        
        WelcomeButton.hidden = true
        WelcomeButton.setTitle("Restore", forState: UIControlState.Normal)
    }
    
    @IBAction func hideBlueFlower(sender: AnyObject) {
        HideBlueFlowerButton.hidden = true
        BlueFlowerImage.hidden = true
        
        WelcomeButton.hidden = false
    }

    @IBAction func hidePinkFlower(sender: AnyObject) {
        HidePinkFlowerButton.hidden = true
        PinkFlowerImage.hidden = true
        
        WelcomeButton.hidden = false        
    }
}

