//
//  main.swift
//  MyXpcClient
//
//  Created by Eddie on 5/7/19.
//  Copyright © 2019 Eddie Kim. All rights reserved.
//

import Foundation

// Setup the connection
let connection = NSXPCConnection(machServiceName: MyXpcConfig.serviceName)
connection.remoteObjectInterface = NSXPCInterface(with: MyXpcInterface.self)
connection.resume()

// Send a message
print("Send Message")
let remote = connection.remoteObjectProxy as! MyXpcInterface
remote.toUpper(s: "hello") { (s) in
    print(s)
}

RunLoop.current.run()
