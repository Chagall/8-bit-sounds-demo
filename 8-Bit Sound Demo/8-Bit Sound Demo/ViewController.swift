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

    @IBOutlet weak var loseOneSound: UIButton!
    @IBOutlet weak var loseTwoSound: UIButton!
    @IBOutlet weak var winOneSound: UIButton!
    @IBOutlet weak var winTwoSound: UIButton!
    @IBOutlet weak var achievementOneSound: UIButton!
    @IBOutlet weak var achievementTwoSound: UIButton!
    @IBOutlet weak var getPointSound: UIButton!
    
    var isMenuHidden:Bool = true
    
    let soundFileNames = ["menu_select", "jingle-lose-01", "jingle-lose-00", "jingle-win-00", "jingle-win-01", "jingle-achievement-00", "jingle-achievement-01", "collect-point-01"]
    var audioPlayers = [AVAudioPlayer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

    @IBAction func onMenuButtonTapped(sender: UIButton) {
        audioPlayers[0].play()
        loseOneSound.hidden = !isMenuHidden
        loseTwoSound.hidden = !isMenuHidden
        winOneSound.hidden = !isMenuHidden
        winTwoSound.hidden = !isMenuHidden
        achievementOneSound.hidden = !isMenuHidden
        achievementTwoSound.hidden = !isMenuHidden
        getPointSound.hidden = !isMenuHidden
        self.isMenuHidden = !isMenuHidden
    }
    
    @IBAction func onLoseTwoTapped(sender: UIButton) {
        audioPlayers[1].play()
    }
    
    @IBAction func onLoseOneTapped(sender: UIButton) {
        audioPlayers[2].play()
    }
    
    @IBAction func onWinOneTapped(sender: UIButton) {
        audioPlayers[3].play()
    }
    
    @IBAction func onWinTwoTapped(sender: UIButton) {
        audioPlayers[4].play()
    }
    
    @IBAction func onAchievementOneTapped(sender: UIButton) {
        audioPlayers[5].play()
    }
    
    @IBAction func onAchievementTwoTapped(sender: UIButton) {
        audioPlayers[6].play()
    }
    
    @IBAction func onGetPointClicked(sender: UIButton) {
        audioPlayers[7].play()
    }
    
}

