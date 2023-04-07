//
//  InputTrackerView.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 06/04/23.
//

import SwiftUI

struct InputTrackerView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background-2")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}

struct InputTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        InputTrackerView()
    }
}
