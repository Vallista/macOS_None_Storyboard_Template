//
// Created by 마광휘 on 2017. 4. 27..
// Copyright (c) 2017 test. All rights reserved.
//

import Cocoa

autoreleasepool { () -> () in
    let application = NSApplication.shared()
    let delegate = AppDelegate()
    application.delegate = delegate
    application.run()
}
