//
//  ViewController.swift
//  Soundboard Demo
//
//  Created by Shalise Ayromloo on 3/19/19.
//  Copyright © 2019 Shalise Ayromloo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let soundFilenames = ["swvader01", "nerfherder", "yodalaughing", "laughfuzzball"]
    
    var audioPlayers = [AVAudioPlayer]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //set up audio players
        for sound in soundFilenames {
            
            do {
                //try to do something
                let url = Bundle.main.path(forResource: sound, ofType: "wav")
                let audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
                
                audioPlayers.append(audioPlayer)
            } //closes do
            catch {
                //catch the error that is thrown
                audioPlayers.append(AVAudioPlayer())
            } //closes catch
            
            
            
        } //closes the for-loop
        
        
        
        
    } //closes viewDidLoad()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated
    } //closes didReceiveMemoryWarning()

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        //Get the audioPlayer that corresponds
        let audioPlayer = audioPlayers[sender.tag]
        audioPlayer.play()
        
        
    } //closes buttonTapped()
    
} //closes class

