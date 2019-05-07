//
//  main.swift
//  MyXpcListener
//
//  Created by Eddie on 5/7/19.
//  Copyright © 2019 Eddie Kim. All rights reserved.
//

import Foundation

// Create the XPC listener
let listenerDelegate = MyXpcListenerDelegate()
let listener = NSXPCListener(machServiceName: "com.example.eddie")
listener.delegate = listenerDelegate
listener.resume()
print("XPC is listening")

RunLoop.current.run()

