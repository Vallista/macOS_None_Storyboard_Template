//
//  ViewController.swift
//  test
//
//  Created by 마광휘 on 2017. 4. 27..
//  Copyright (c) 2017 test. All rights reserved.
//

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
