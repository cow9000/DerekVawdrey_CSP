//
//  Lever.swift
//  DerekVawdrey_CSP
//
//  Created by Vawdrey, Derek on 11/20/17.
//  Copyright © 2017 Vawdrey, Derek. All rights reserved.
//

import Foundation

public class Lever : Switchable{
    public var switchState: Bool
    
    public init(){
        self.switchState = false
    }
    
    public func toggleSwitch() {
        switchState = !switchState
    }
    
    public func isOn() -> Bool {
        return switchState
    }
    
}
