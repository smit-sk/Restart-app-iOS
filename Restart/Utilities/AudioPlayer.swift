//
//  AudioPlayer.swift
//  Restart
//
//  Created by SMIT KHOKHARIYA on 2024-02-13.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String?, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            
        }catch{
            print("Cuuld not play the sound file.")
        }
    }
}


