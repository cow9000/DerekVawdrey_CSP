//
//  Kickable.swift
//  DerekVawdrey_CSP
//
//  Created by Vawdrey, Derek on 11/20/17.
//  Copyright © 2017 Vawdrey, Derek. All rights reserved.
//

import UIKit

public protocol Switchable{
    var switchState : Bool {get set}
    func toggleSwitch() -> Void
    func isOn() -> Bool
}
