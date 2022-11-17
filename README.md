# ChangeObserver

Used to use the `onChange(of:perform)` function in the iOS 13 system version

## Supported Platforms

* iOS 13.0
* macOS 10.15
* tvOS 13.0
* watchOS 6.0

## Usage

```swift
import SwiftUI
import ChangeObserver

struct ContentView: View {
    @State private var width: CGFloat = 100

    var body: some View {
        VStack {
            Spacer()
        }
        .onDataChange(of: width) { _ in
            // your code
        }
    }
} 

```

## Installation

You can add ChangeObserver to an Xcode project by adding it as a package dependency

From the **File** menu, select **Swift Packages** -> **Add Package Dependency**...
Enter https://github.com/HumorousGhost/ChangeObserver into the package repository URL text field.
Link **ChangeObserver** to your application target.
