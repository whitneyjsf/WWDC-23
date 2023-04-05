import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background-1")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 10){
                    Text("MoodHunt")
                    VStack {
                        Text("Let's track your mood today! 😊")
                    }
                    .padding()
                    .font(Font.system(size:30, design: .serif))
                    VStack {
                        NavigationLink(destination: IntroductionView()){
                            Image(systemName:"play.circle")
                        }
                        .foregroundColor(.brown)
                    }
                }
                .font(Font.system(size:110, design: .serif))
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


