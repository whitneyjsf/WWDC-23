//
//  HistoryView.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 06/04/23.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        ZStack {
            Image("Background-2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        }
    }
    
    struct HistoryView_Previews: PreviewProvider {
        static var previews: some View {
            HistoryView()
        }
    }
}
