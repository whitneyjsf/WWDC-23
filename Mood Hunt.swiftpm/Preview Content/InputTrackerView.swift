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
                Image("Background-3")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 10){
                    Text("How are you today?")
                        .font(Font.system(size:60, design: .serif))
                        .multilineTextAlignment(.center)
                }
                VStack {
                    
                }
            }
            Spacer()
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct InputTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        InputTrackerView()
    }
}
