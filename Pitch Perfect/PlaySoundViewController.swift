//
//  PlaySoundViewController.swift
//  Pitch Perfect
//
//  Created by Silvano Bini on 10/02/2016.
//  Copyright © 2016 Silvano Bini. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {

     var recordedAudio : NSURL!
    
    var audioPlayer:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
            audioPlayer =  try? AVAudioPlayer(contentsOfURL: recordedAudio)
            audioPlayer.enableRate=true
    
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlow(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate=0.5
        audioPlayer.currentTime=0.0
        audioPlayer.play()
    }

    @IBAction func playFast(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate=2.0
        audioPlayer.currentTime=0.0
        audioPlayer.play()
    }
    
    @IBAction func stop(sender: UIButton) {
        audioPlayer.stop()  
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
