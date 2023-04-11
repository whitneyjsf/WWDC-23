//
//  HistoryViewModel.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 10/04/23.
//

import Foundation
import Combine

class HistoryViewModel: ObservableObject {
    @Published var moodHistory: [String] = []

    func loadHistory() {
        moodHistory = UserDefaults.standard.array(forKey: "moodHistory") as? [String] ?? []
    }
    
//    func dateHistory(mood: String) {
//        moodHistory.append("\(mood) - \(Date().formatted(date: .abbreviated, time: .shortened))")
//    }
}
