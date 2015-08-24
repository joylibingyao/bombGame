//
//  ViewController.swift
//  MindTheMine
//
//  Created by Wei Chung Chuo on 8/19/15.
//  Copyright © 2015 Wei Chung Chuo. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer  {
        let path = NSBundle.mainBundle().pathForResource(file as String, ofType: type as String)
        let url = NSURL.fileURLWithPath(path!)
        var audioPlayer:AVAudioPlayer?
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: url)
        } catch {
            print("NO AUDIO PLAYER")
        }
        
        return audioPlayer!
    }
    
    var backMusic: AVAudioPlayer!


    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backMusic = setupAudioPlayerWithFile("03-shika-kutsujyokuka-no-sentaku-player-select-", type: "mp3")
        backMusic.play()
       
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var backgroundMusic = AVAudioPlayer()

}

