//
//  MoodModel.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 10/04/23.
//

import SwiftUI
import Foundation

struct MoodModel: Identifiable, Encodable, Decodable {
    var id = UUID()
    var date: Date = Date()
    var result: String
}

