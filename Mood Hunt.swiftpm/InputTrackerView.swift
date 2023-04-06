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
                
//                VStack {
//                    Text("Question 1")
//                    .padding()
//                    Text("What have you been up to?")
//                    .font(Font.system(size:34, design: .serif))
//                    Spacer()
//                }
//                .padding(.top, 300)
//                .font(Font.system(size:60, design: .serif))
//                VStack {
//
//                }
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
