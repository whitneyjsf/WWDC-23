//
//  PageTwoView.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 12/04/23.
//

import SwiftUI

struct PageTwoView: View {
    var body: some View {ZStack{
        Image("Background-2")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
        VStack(alignment: .center, spacing: 10){
            VStack {
                Text("\nAre you ready to track your mood? 👀")
                    .padding(.horizontal, 20)
                    .font(Font.system(size:55, design: .serif))
            }
            VStack {
                Image("Whitney-2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
            }
            VStack {
                Text("\nBy monitoring your emotions everyday, you can gain valuable insights into your mental health and well-being, and make positive changes to live your berst life.\n\nMood Hunt will help you to gain a better understanding of your mood and be able to make positive changes to improve your overall well-being.\n")
            }
            .padding(.horizontal, 80)
            .multilineTextAlignment(.center)
            .font(Font.system(size:30, design: .serif))
            VStack {
                HStack {
                    NavigationLink(destination: PageOneView().navigationBarHidden(true).onAppear(perform: {
                        SoundManager.instance.playSound()
                    })){
                        Image(systemName:"chevron.backward.square")
                    }
                    .foregroundColor(.brown)
                    .padding()
                    NavigationLink(destination: IntroductionView().navigationBarHidden(true).onAppear(perform: {
                        SoundManager.instance.playSound()
                    })){
                        Image(systemName:"chevron.forward.square")
                    }
                    .foregroundColor(.brown)
                }
            }
        }
        .padding(.horizontal, 50)
        .font(Font.system(size:60, design: .serif))
        .multilineTextAlignment(.center)
    }
    }
}

struct PageTwoView_Previews: PreviewProvider {
    static var previews: some View {
        PageTwoView().previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)")).previewInterfaceOrientation(.portrait)
    }
}

