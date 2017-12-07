//
//  DrawingView.swift
//  DerekVawdrey_CSP
//
//  Created by Vawdrey, Derek on 12/5/17.
//  Copyright © 2017 Vawdrey, Derek. All rights reserved.
//

import UIKit

class DrawingView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override public func draw(_ rect: CGRect){
        drawStickFigure().stroke()
        drawTurtle()
        drawHappyTree()
    }
    
    private func drawStickFigure() -> UIBezierPath{
        let stickFigure = UIBezierPath()
        
        UIColor.green.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x:200,y:200), radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(2) * CGFloat.pi, clockwise: true)
        
        stickFigure.move(to: CGPoint(x:200,y:220))
        stickFigure.addLine(to: CGPoint(x:200, y:270))
        stickFigure.move(to: CGPoint(x:180,y:240))
        stickFigure.addLine(to: CGPoint(x:220,y:240))
        stickFigure.move(to: CGPoint(x:200,y:270))
        stickFigure.addLine(to: CGPoint(x:180,y:300))
        stickFigure.move(to: CGPoint(x:200,y:270))
        stickFigure.addLine(to: CGPoint(x:220,y:300))
        
        
        return stickFigure
        
    }
    
    public func drawHappyTree() -> Void{
        let bobRoss = UIBezierPath()
        
        bobRoss.move(to: CGPoint(x:80,y:500))
        bobRoss.addLine(to: CGPoint(x:120,y:150))
        bobRoss.addLine(to:CGPoint(x:40,y:150))
        bobRoss.close()
        
        UIColor(patternImage: UIImage(named:"images")!).setFill()
        UIColor.orange.setStroke()
        bobRoss.lineWidth = 2.0
        bobRoss.fill()
        bobRoss.stroke()
        
        let stickFigure = UIBezierPath()
        
        stickFigure.move(to: CGPoint(x:200,y:220))
        stickFigure.addLine(to: CGPoint(x:200, y:470))
        stickFigure.move(to: CGPoint(x:180,y:240))
        stickFigure.addLine(to: CGPoint(x:220,y:440))
        stickFigure.move(to: CGPoint(x:200,y:270))
        stickFigure.addLine(to: CGPoint(x:180,y:400))
        stickFigure.move(to: CGPoint(x:200,y:270))
        stickFigure.addLine(to: CGPoint(x:320,y:400))
        stickFigure.lineWidth = 6.0
        UIColor.red.setStroke()
        stickFigure.stroke()
    }
    
    private func drawTurtle() -> Void{
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x:50,y:250))
        logo.addLine(to: CGPoint(x:100,y:300))
        logo.addLine(to: CGPoint(x:50,y:350))
        logo.close()
        logo.fill()
    }
    
    
    
}
