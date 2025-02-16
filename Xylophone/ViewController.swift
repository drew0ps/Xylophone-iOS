//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
var player: AVAudioPlayer!

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }



    @IBAction func keyPressedC(_ sender: UIButton) {
        playSound(soundName: "C")
    }
    
    @IBAction func keyPressedD(_ sender: UIButton) {
        playSound(soundName: "D")
    }
    
    @IBAction func keyPressedE(_ sender: UIButton) {
        playSound(soundName: "E")
    }
    
    @IBAction func keyPressedF(_ sender: UIButton) {
        playSound(soundName: "F")
    }
    
    @IBAction func keyPressedG(_ sender: UIButton) {
        playSound(soundName: "G")
    }
    
    @IBAction func keyPressedA(_ sender: UIButton) {
        playSound(soundName: "A")
    }
    
    @IBAction func keyPressedB(_ sender: UIButton) {
        playSound(soundName: "B")
    }

}

