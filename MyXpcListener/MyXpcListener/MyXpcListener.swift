//
//  MyXpcListener.swift
//  MyXpcListener
//
//  Created by Eddie on 5/7/19.
//  Copyright © 2019 Eddie Kim. All rights reserved.
//

import Foundation

class MyXpcObject: NSObject, MyXpcInterface {
    func toUpper(s: String, callback: (String) -> Void) {
        Logger.log("Handle toUpper message")
        callback(s.uppercased())
    }
}

class MyXpcListenerDelegate: NSObject, NSXPCListenerDelegate {

    func listener(_ listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool {
        newConnection.exportedObject = MyXpcObject()
        newConnection.exportedInterface = NSXPCInterface(with: MyXpcInterface.self)
        newConnection.resume()

        Logger.log("Accept new connection")
        return true
    }
}
