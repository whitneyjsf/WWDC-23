//
//  ButtonSoundViewModel.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 07/04/23.
//

import SwiftUI
import AVFoundation

class ButtonSoundViewModel: ObservableObject {
    var player: AVAudioPlayer?
    
    init() {
        guard let url = Bundle.main.url(forResource: "button-click-sound", withExtension: "mp3") else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
        } catch let error {
            print("Error loading sound file: \(error.localizedDescription)")
        }
    }
    
    func playButtonSound() {
        player?.currentTime = 0
        player?.play()
    }
}

