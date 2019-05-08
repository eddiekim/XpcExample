//
//  Logger.swift
//  MyXpcListener
//
//  Created by Eddie on 5/8/19.
//  Copyright © 2019 Eddie Kim. All rights reserved.
//

import Darwin
import Foundation

class Logger {
    class func log(_ s: String) {
        print(s)
        fflush(stdout) // Immediate flush seems to be required when running as a daemon.
    }
}
