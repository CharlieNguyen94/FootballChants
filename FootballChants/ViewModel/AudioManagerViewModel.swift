//
//  AudioManagerViewModel.swift
//  FootballChants
//
//  Created by Charlie Nguyen on 04/09/2021.
//

import Foundation
import AVKit

class AudioManagerViewModel {
    
    private var chantAudioPlayer: AVAudioPlayer?
    
    func playback(_ team: Team) {
        
        // If the sound is already playing stop it
        // If it isn't then play it
        if team.isPlaying {
            chantAudioPlayer?.stop()
        } else {
            guard let path = Bundle.main.path(forResource: "\(team.id.chantFile).mp3", ofType: nil) else { return }
            let url = URL(fileURLWithPath: path)
            do {
                chantAudioPlayer = try AVAudioPlayer(contentsOf: url)
                chantAudioPlayer?.numberOfLoops = -1
                chantAudioPlayer?.play()
            } catch {
                print(error)
            }
        }
    }
    
}
