//
//  ViewController.swift
//  8-Bit Sound Demo
//
//  Created by Fabio Pereira on 01/08/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    let soundFileNames = ["menu_select", "win_00"]
    var audioPlayers = [AVAudioPlayer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for sound in soundFileNames {
            do {
                let url = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(sound, ofType: "wav")!)
                let audioPlayer = try AVAudioPlayer(contentsOfURL: url)
                audioPlayers.append(audioPlayer)
            }
            catch {
                audioPlayers.append(AVAudioPlayer())
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonTapped(sender: UIButton) {
        
        let audioPLayer = audioPlayers[0]
        audioPLayer.play()
    }
}

