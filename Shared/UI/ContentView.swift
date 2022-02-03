import SwiftUI

struct ContentView: View {
    @StateObject private var model = CameraViewModel()
    
    var body: some View {
        ZStack {
            CameraView(image: model.frame)
                .edgesIgnoringSafeArea(.all)
            
            ErrorView(error: model.error)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}