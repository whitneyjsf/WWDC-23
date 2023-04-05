//
//  InputTrackerView.swift
//  MoodHunt
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
                VStack {
                    Text("What have you been up to?")
                }
                .font(Font.system(size:35, design: .serif))
                .multilineTextAlignment(.center)
                VStack {
                    HStack {
                        //button (happy, sad, angry, stress, etc.)
                    }
                }
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
