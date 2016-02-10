//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Silvano Bini on 07/02/2016.
//  Copyright © 2016 Silvano Bini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden=true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        stopButton.hidden=false
        recordingButton.enabled=false
    }
    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true
        recordingButton.enabled=true
        stopButton.hidden=true
    }

}

