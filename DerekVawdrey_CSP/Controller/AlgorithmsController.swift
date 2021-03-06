//
//  AlgorithmsController.swift
//  DerekVawdrey_CSP
//
//  Created by Vawdrey, Derek on 10/26/17.
//  Copyright © 2017 Vawdrey, Derek. All rights reserved.
//

import UIKit

class AlgorithmsController: UIViewController {

    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void {
        var algorithmSteps : [String] = []
        
        
        // MARK: - Algorithm definition
        let algorithm : String = "These are the instrucitons to create a project in Java using Eclipse\n"
        let stepOne : String = "Create a Java Project in Eclipse"
        let stepTwo : String = "Create a package named 'project.controller'"
        let stepThree : String = "Create a package named ‘project.view’"
        let stepFour : String = "Create a package named ‘project.model’"
        let stepFive : String = "Inside the ‘project.controller’ package create a java file named ‘ProjectRunner’"
        let stepSix : String = "Write code inside ‘ProjectRunner’"
        let stepSeven : String = "Inside the ‘project.controller’ package create a java file named ‘ProjectController’"
        let stepEight : String = "Write code inside ‘ProjectController’"
        
        // TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet : String = "👺"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
        
    }
    
    private func createParagraphStyle() -> NSParagraphStyle {
        let paragraphStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAlgorithm()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
