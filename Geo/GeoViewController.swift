//
//  GeoViewController.swift
//  Geo
//
//  Created by SVYAT on 31.05.16.
//  Copyright © 2016 HiT2B. All rights reserved.
//

import UIKit
import AVFoundation

class GeoViewController: UIViewController, AVSpeechSynthesizerDelegate {
    
    @IBOutlet weak var flagButton1: UIButton!
    @IBOutlet weak var flagButton2: UIButton!
    @IBOutlet weak var flagButton3: UIButton!
    @IBOutlet weak var repeatPhraseButton: UIButton!
    
    var languageChoices = [Country]()
    var lastRandomLanguageID = -1
    var selectedRow = -1
    var correctButtonTag = -1
    var currentState: QuizState = .NoQuestionUpYet
    var spokenText = ""
    var bcpCode = ""
    let speechSynth = AVSpeechSynthesizer()
    
    @IBAction func flagButtonPressed(sender: UIButton) {
        
        if sender.tag == correctButtonTag{
            displayAlert("Correct",  messageText: "Good choice!")
        }else{
            displayAlert("Incorrect", messageText: "Nope. Try again!")
        }
        
    }
}
