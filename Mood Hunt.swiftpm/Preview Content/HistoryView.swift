//
//  HistoryView.swift
//  Mood Hunt
//
//  Created by Whitney Prajna Pundarika on 06/04/23.
//

import SwiftUI

struct HistoryView: View {
    
    @StateObject var viewModel = HistoryViewModel()

    var body: some View {
        NavigationView {
            ZStack {
                Image("Background-4")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack (alignment: .center, spacing: 10){
                    Text("Mood History")
                        .font(Font.system(size:50, design: .serif))
                        .multilineTextAlignment(.center)
                        .padding()
                    VStack {
                        List(viewModel.moodHistory, id: \.self) { mood in
                            HStack {
                                Text(mood)
                                Spacer()
                                HStack {
                                    Text("\(Date().formatted(date: .abbreviated, time: .shortened))")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        .onAppear {
                            viewModel.loadHistory()
                        }
                    }
                }
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .padding(.top, 50)
                .padding(.bottom, 50)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView().previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)")).previewInterfaceOrientation(.portrait)
    }
}




