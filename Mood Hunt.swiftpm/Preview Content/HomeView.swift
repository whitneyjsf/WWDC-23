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
                Image("HomeCartoon")
            }
            VStack {
                Text("Let's track your mood today!")
            }
            .padding()
            .font(Font.system(size:30, design: .serif))
            VStack {
                NavigationLink(destination: IntroductionView().navigationBarHidden(true)){
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
        HomeView()
    }
}

