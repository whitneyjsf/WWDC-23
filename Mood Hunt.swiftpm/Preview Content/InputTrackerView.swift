//
//  InputTrackerView.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 06/04/23.
//

import SwiftUI

struct InputTrackerView: View {
    
    @StateObject var viewModel = InputTrackViewModel()
    
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
                        .padding(.bottom, 35)
                    VStack(alignment: .center, spacing: 10){
                        // FOr loop paralel mood nambah history nambah
                        //
                        ForEach(viewModel.moods, id: \.self) { mood in
                            Button(action: {
                                SoundManager.instance.playSound()
                                viewModel.selectMood(mood: mood)
                            }) {
                                Text(mood)
                                    .font(Font.system(size:30, design: .serif))
                                    .foregroundColor(.white)
                                    .frame(width:350, height: 60)
                                    .background(Color.brown)
                                    .cornerRadius(8)
                                    .padding(.bottom,24)
//                                Spacer()
//                                Text(date)
                            }
                        }

                    }
                    .padding(.horizontal ,150)
                    
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct InputTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        InputTrackerView().previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)")).previewInterfaceOrientation(.portrait)
    }
}
