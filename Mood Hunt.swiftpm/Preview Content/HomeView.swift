//
//  HomeView.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 06/04/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text("\nMoodHunt")
            VStack {
                Image("Whitney-1")
                    .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
            }
            .padding()
            VStack {
                Text("Let's track your mood today!")
            }
            .padding()
            .font(Font.system(size:30, design: .serif))
            VStack {
                NavigationLink(destination: PageOneView().navigationBarHidden(true).onAppear(perform: {
                    SoundManager.instance.playSound()
                })){
                    Image(systemName:"play.circle")
                }
                .foregroundColor(.brown)
            }
        }
        .font(Font.system(size:110, design: .serif))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)")).previewInterfaceOrientation(.portrait)
    }
}

