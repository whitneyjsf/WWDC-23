//
//  PageOneView.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 12/04/23.
//

import SwiftUI

struct PageOneView: View {
    var body: some View {
        ZStack{
            Image("Background-2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 10){
                VStack {
                    Text("\nIntroducing the Developer 👋")
                        .padding(.horizontal, 55)
                }
                Image("Whitney")
                VStack {
                    Text("\n\nHi, I'm Whitney Prajna Pundarika, an undergraduate student from BINUS University and majoring on Information Systems. I haven an interest into iOS Developer and Data Analyst.\n\nIn this year, I'm one of the student from Apple Developer Academy @BINUS - Cohort 6.\n")
                }
                .padding(.horizontal, 60)
                .multilineTextAlignment(.center)
                .font(Font.system(size:30, design: .serif))
                VStack {
                    HStack {
                        NavigationLink(destination: PageTwoView().navigationBarHidden(true).onAppear(perform: {
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

struct PageOneView_Previews: PreviewProvider {
    static var previews: some View {
        PageOneView().previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)")).previewInterfaceOrientation(.portrait)
    }
}

