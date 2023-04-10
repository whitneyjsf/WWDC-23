//
//  HistoryView.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 06/04/23.
//

import SwiftUI

struct HistoryView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background-4")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack (alignment: .center, spacing: 10){
                    Text("Mood History")
                        .font(Font.system(size:60, design: .serif))
                        .multilineTextAlignment(.center)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}



