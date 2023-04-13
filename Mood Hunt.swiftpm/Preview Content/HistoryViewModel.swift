//
//  HistoryViewModel.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 10/04/23.
//

import Foundation
import Combine

class HistoryViewModel: ObservableObject {
    @Published var moodHistory = [MoodModel]()
    
    func loadHistory() {
        if let data = UserDefaults.standard.data(forKey: "moodModels") {
            // Decode the Data object back to an array of MoodModel objects using JSONDecoder
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([MoodModel].self, from: data) {
                // Use the decoded array of MoodModel objects
                moodHistory = decoded
                print(moodHistory)
            }
            
            print(data)
        }
    }
}
