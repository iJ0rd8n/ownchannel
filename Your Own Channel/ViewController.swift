//
//  ViewController.swift
//  Your Own Channel
//
//  Created by Kane2931 on 2015-11-11.
//  Copyright © 2015 Kane2931. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // Paste your URL below between the " " to customize your channel (Default: NASA TV).
    
    var player = AVPlayer(URL: NSURL(string: "http://nasatv-lh.akamaihd.net/i/NASA_101@319270/master.m3u8")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layer = AVPlayerLayer(player: player)
        
        layer.frame = self.view.frame
        layer.videoGravity = AVLayerVideoGravityResizeAspectFill
        
        self.view.layer.addSublayer(layer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    internal func play() {
        player.play()
    }
    
    internal func pause() {
        player.pause()
    }
    
}
