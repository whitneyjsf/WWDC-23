//
//  IntroductionView.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 06/04/23.
//

import SwiftUI

struct IntroductionView: View {
    
    @State private var isInputTrackerViewAdded = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background-2")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 10){
                    Text("What have you been up to?\n")
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
                    VStack (alignment: .center) {
                        Text("\nIn today's fast-paced world, it's easy to get caught up in the hustle and bustle of daily life. Our moods can fluctuate throughout the day.")
                        Text("\nBut how can we keep track of these changes and understand the patterns in our emotional state?")
                        TypeWriterView()
                            .padding()
                    }
                    .padding(.horizontal ,90)
                    .font(Font.system(size:25, design: .serif))
                    .multilineTextAlignment(.center)
                    .lineLimit(9)
                    
                    VStack {
                        NavigationLink(destination: InputTrackerView().onAppear(perform: {
                            SoundManager.instance.playSound()
                        })) {
                            Text("Track Your Mood Today")
                                .font(Font.system(size:30, design: .serif))
                                .foregroundColor(.white)
                                .frame(width:500, height: 60)
                                .background(Color.brown)
                                .cornerRadius(8)
                                .padding(.bottom,5)
                        }
                        
                        NavigationLink(destination: HistoryView().onAppear(perform: {
                            SoundManager.instance.playSound()
                        })) {
                            Text("Check Your Mood History")
                                .font(Font.system(size:30, design: .serif))
                                .foregroundColor(.white)
                                .frame(width:500, height: 60)
                                .background(Color.brown)
                                .cornerRadius(8)
                                .padding(.bottom,5)
                        }
                    }
                    .padding()
                    .font(Font.system(size:80, design: .serif))
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView().previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)")).previewInterfaceOrientation(.portrait)
    }
}
