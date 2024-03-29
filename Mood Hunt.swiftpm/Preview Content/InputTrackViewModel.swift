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
        if let data = UserDefaults.standard.data(forKey: "moodModels") {
            print("Data \(data)")
            // Decode the Data object back to an array of MoodModel objects using JSONDecoder
            let decoder = JSONDecoder()
            if var decoded = try? decoder.decode([MoodModel].self, from: data) {
                // Use the decoded array of MoodModel objects
                decoded.append(MoodModel(result: mood))
                let encoder = JSONEncoder()
                let encoded = try? encoder.encode(decoded)
                UserDefaults.standard.set(encoded, forKey: "moodModels")
                
            }
        } else {
            let moods = [MoodModel(result: mood)]
            
            // Encode the array to Data using JSONEncoder
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(moods) {
                // Save the Data object to UserDefaults
                UserDefaults.standard.set(encoded, forKey: "moodModels")
            }
        }
    }
    
    func reset() {
        selectedMood = nil
        isInputDisabled = false
    }
}
