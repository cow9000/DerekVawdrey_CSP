//
//  InternetDetailViewController.swift
//  DerekVawdrey_CSP
//
//  Created by Vawdrey, Derek on 11/29/17.
//  Copyright © 2017 Vawdrey, Derek. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController : UIViewController
{
    //MARK: GUI Controls
    
    @IBOutlet weak var textView : UILabel!
    @IBOutlet weak var webViewer : WKWebView!
    
    override public func viewDidLoad(){
        super.viewDidLoad()
        setup()
    }
    
    private func setup() -> Void{
        
    }
    
}
