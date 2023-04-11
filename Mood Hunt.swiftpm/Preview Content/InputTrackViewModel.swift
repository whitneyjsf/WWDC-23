//
//  InputTrackViewModel.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 10/04/23.
//

import Foundation
import Combine
import UIKit
import SwiftUI

class InputTrackViewModel: ObservableObject {
    let moods = ["😄 Happy", "☹️ Sad", "😡 Angry", "🤯 Stressed", "🤪 Cheerful"]
    
    @Published var selectedMood: String?
    @Published var isInputDisabled = false
    
    func selectMood(mood: String) {
        var moodHistory = UserDefaults.standard.array(forKey: "moodHistory") as? [String] ?? []
        moodHistory.append(mood)
        UserDefaults.standard.set(moodHistory, forKey: "moodHistory")
    }
    
    func reset() {
        selectedMood = nil
        isInputDisabled = false
    }
    
}
