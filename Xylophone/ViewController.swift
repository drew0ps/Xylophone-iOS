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

    @IBAction func keyPressed(_ sender: UIButton) {
        let sname = (sender.titleLabel?.text)!
        sender.layer.opacity = 0.5
        playSound(soundName: sname)
        // Restore opacity after 4 seconds without blocking the main thread
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            sender.layer.opacity = 1
        }
    }
}

