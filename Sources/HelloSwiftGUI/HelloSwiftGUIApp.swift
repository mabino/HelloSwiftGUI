import SwiftUI

/// The application's entry point using the SwiftUI App protocol.
/// ContentView is defined in a separate file, promoting modularity.
@main
struct HelloSwiftGUIApp: App {
    var body: some Scene {
        WindowGroup {
            // Define the content view and set a minimum size for the initial window
            ContentView()
                .frame(minWidth: 350, minHeight: 180) 
        }
        // The standard macOS menus (App, Window, Help) are generated automatically
        // by the system using this scene.
    }
}

