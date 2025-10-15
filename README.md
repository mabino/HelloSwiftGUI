# Swift CLI SwiftUI GUI Application (Bare-Bones)

Build and run a macOS graphical application using SwiftUI and only the Swift Command Line Interface (CLI), without requiring Xcode's project files.

HelloSwiftGUI/
├── Package.swift    <-- Package Manifest
└── Sources/
    └── HelloSwiftGUI/
        ├── ContentView.swift      <-- The UI definition
        └── HelloSwiftGUIApp.swift <-- The application entry point (@main)

The Package Manifest is the configuration file for the Swift Package Manager (SPM).  It defines the package, sets platform requirements (like minimum OS), define what the package produces (e.g., an executable), and lists dependencies.  The configuration tells the compiler how to compile the source code and link any necessary frameworks.

## Build and Run 

From the root HelloSwiftGUI/ directory:

1. Build the executable, compiling the SwiftUI code into a binary.

`swift build -c release`

2. Package the Binary into an .app Bundle

```
APP_BUNDLE=HelloSwiftGUI.app/Contents
# Create required directories and Info.plist
mkdir -p $APP_BUNDLE/MacOS $APP_BUNDLE/Resources
echo '<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "[http://www.apple.com/DTDs/PropertyList-1.0.dtd](http://www.apple.com/DTDs/PropertyList-1.0.dtd)"><plist version="1.0"><dict><key>CFBundleExecutable</key><string>HelloSwiftGUI</string><key>CFBundleIdentifier</key><string>com.cli.HelloSwiftGUI</string><key>LSUIElement</key><string>0</string></dict></plist>' > $APP_BUNDLE/Info.plist
# Copy the compiled executable
cp ./.build/release/HelloSwiftGUI $APP_BUNDLE/MacOS/HelloSwiftGUI
```

3. Launch the app.

`open HelloSwiftGUI.app`

