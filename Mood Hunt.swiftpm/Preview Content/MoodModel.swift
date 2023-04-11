//
//  MoodModel.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 10/04/23.
//

import SwiftUI
import Foundation

struct MoodModel: Identifiable {
    let id = UUID()
    let date: Date
    let result: Double
}

