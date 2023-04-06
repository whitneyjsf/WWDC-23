import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background-1")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                HomeView()
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


