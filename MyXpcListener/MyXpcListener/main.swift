//
//  main.swift
//  MyXpcListener
//
//  Created by Eddie on 5/7/19.
//  Copyright © 2019 Eddie Kim. All rights reserved.
//

import Darwin
import Foundation

// Create the XPC listener
let listenerDelegate = MyXpcListenerDelegate()
let listener = NSXPCListener(machServiceName: MyXpcConfig.serviceName)
listener.delegate = listenerDelegate
listener.resume()

Logger.log("Listening")
RunLoop.current.run()
