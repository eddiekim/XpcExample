//
//  MyXpcInterface.swift
//  
//
//  Created by Eddie on 5/7/19.
//

import Foundation

@objc protocol MyXpcInterface {
    func toUpper(s: String, callback: @escaping (_ upper: String) -> Void)
}
