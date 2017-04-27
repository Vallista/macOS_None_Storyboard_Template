# Not using storyboard example in mac OS

The damn `macOS` and `iOS` projects were made angry by letting me study how to avoid the `storyboard`.

So I made an example. I do not want everyone to do trial and error like I do.

### Installation

There is nothing to install.
Download this project.

enjoy!


### Explanation

Create a new project. Then it is made as follows.

![이미지1](https://vallista.github.io//assets/img/postImg/post7/1.png)

The reason that the storyboard is turned on first in the app is because `AppDelegate.swift` is main and `Storyboard` is registered as `NSMainStoryboardFile` in `info.plist`. Let's erase it as follows.

![이미지2](https://vallista.github.io//assets/img/postImg/post7/2.png)

delete `Storyboard` too.

![이미지3](https://vallista.github.io//assets/img/postImg/post7/3.png)

And when it is executed, it is not executed.

The reason is that `NSMainStoryboardFile` has `Main` as `Storyboard`.
But we deleted it. `Main` `Storyboard` does not exist.

Let's create a new `Main` and replace it.

Create the `main.swift` file.

```swift
import Cocoa

autoreleasepool { () -> () in
    let application = NSApplication.shared()
    let delegate = AppDelegate()
    application.delegate = delegate
    application.run()
}
```

Delete `NSApplicationMain` from` AppDelegate.swift`. And add the source code.

```swift
import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {

    var newWindow: NSWindow?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        newWindow = NSWindow(contentViewController: ViewController())

        newWindow!.makeKeyAndOrderFront(nil)
    }
    func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
    }
}

```

add the source code `ViewController.swift` too.

```swift
import Cocoa

class ViewController: NSViewController {

    override open func loadView() {
        let view = NSView(frame: NSMakeRect(0,0,500,300))
        view.wantsLayer = true
        view.layer?.borderWidth = 2
        view.layer?.borderColor = NSColor.red.cgColor
        self.view = view
    }
}
```

And when it is executed, it is not executed.
go to `info.plist`, add `Principal class` and `NSApplication`

![이미지4](https://vallista.github.io//assets/img/postImg/post7/4.png)

If you run it, the window will be created normally.

![이미지5](https://vallista.github.io//assets/img/postImg/post7/5.png)
