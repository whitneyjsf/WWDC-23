//
//  IntroductionView.swift
//  MoodHunt
//
//  Created by Whitney Prajna Pundarika on 06/04/23.
//

import SwiftUI

import SwiftUI

struct IntroductionView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background-2")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 10){
                    Text("Introducing MoodHunter!\n")
                        .font(Font.system(size:60, design: .serif))
                        .multilineTextAlignment(.center)
                    VStack {
                        HStack {
                            Image("Cartoon-1")
                            Image("Cartoon-2")
                            Image("Cartoon-3")
                            Image("Cartoon-4")
                        }
                    }
                    .padding()
                    VStack (alignment: .center) {
                        Text("\nIn today's fast-paced world, it's easy to get caught up in the hustle and bustle of daily life. With so many responsibilities to juggle, it's no surprise that our moods can fluctuate throughout the day. But how can we keep track of these changes and understand the patterns in our emotional state?")
                        TypeWriterView()
                    }
                    .font(Font.system(size:35, design: .serif))
                    .multilineTextAlignment(.center)
                    .lineLimit(9)
                    VStack {
                        NavigationLink(destination: InputTrackerView()){
                            Image(systemName:"play.circle")
                        }
                        .foregroundColor(.brown)
                    }
                }
                .padding()
                .font(Font.system(size:80, design: .serif))
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
