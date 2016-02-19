//
//  ViewController.swift
//  multiples-ex
//
//  Created by JANA KEPKOVA on 2/17/16.
//  Copyright © 2016 JANA KEPKOVA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    // properties
    var gameStarted: Bool = false
    var multiple: Int = 0
    var maxNum: Int = 100
    var currentNum: Int = 0
    var result: Int = 0
    
    // outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var numberTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var displayLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBAction func onAddPressed(sender: UIButton!){
    
        updateLbl()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        
        if (numberTxt.text != nil && numberTxt.text != "") {
            
            if Int(numberTxt.text!) != nil {
                revertVisibility()
                multiple = Int(numberTxt.text!)!
                updateLbl()
            } else {
              numberTxt.text = "0"
            }
        }
        
    }
    
    func assignVisibility(){
        
        logoImg.hidden = false
        playBtn.hidden = false
        numberTxt.hidden = false
        //
        //
        //
        addBtn.hidden = true
        displayLbl.hidden = true
       
    }

    func revertVisibility(){
        
        if logoImg.hidden {
            logoImg.hidden = false
        }else{
            logoImg.hidden = true
        }
        
        if playBtn.hidden {
            playBtn.hidden = false
        }else{
            playBtn.hidden = true
        }
        
        if numberTxt.hidden {
            numberTxt.hidden = false
        }else{
            numberTxt.hidden = true
        }
        //
        //
        //
        if addBtn.hidden {
            addBtn.hidden = false
        }else{
            addBtn.hidden = true
        }
        if displayLbl.hidden {
            displayLbl.hidden = false
        }else{
            displayLbl.hidden = true
        }
        
    }
    
    func updateLbl(){
        
        result = currentNum + multiple
        if (!gameStarted) {
            displayLbl.text = "Press Add to add!"
            gameStarted = true
        } else {
            displayLbl.text = "\(currentNum) + \(multiple) = \(result)"
            currentNum = result
        }
    }
    
    func isGameOver()-> Bool {
        
        if (abs(currentNum) >= abs(maxNum)) {
            return true;
        } else {
            return false;
        }
    }
    
    func restartGame(){
        gameStarted = false
        multiple = 0
        currentNum = 0
        result = 0
        numberTxt.text = ""
        
        assignVisibility()
        
    }

}

