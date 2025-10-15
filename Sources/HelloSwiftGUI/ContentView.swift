import SwiftUI

/// The main content view for the application window.
/// This component now lives in its own file for better organization.
struct ContentView: View {
    var body: some View {
        Text("Hello, Modular SwiftUI World!")
            .font(.system(size: 32, weight: .bold))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding() 
    }
}

