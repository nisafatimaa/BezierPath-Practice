//
//  ViewController.swift
//  AnimationChaining
//
//  Created by Macbook Pro on 04/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
        let topPath : UIBezierPath = {
            let path = UIBezierPath()
            let rect = UIScreen.main.bounds
            path.move(to: .zero)
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height * 1.5/5))
            path.addCurve(to: CGPoint(x: 40, y: 75),
                          controlPoint1: CGPoint(x: rect.width - 40, y: rect.height * 0.6 / 5),
                          controlPoint2: CGPoint(x: rect.width - 70, y: rect.height * 0.4 / 5))
            path.addCurve(to: CGPoint(x: 0, y: 50),
                          controlPoint1: CGPoint(x: 10, y: 75 ),
                          controlPoint2: CGPoint(x: 5, y: 65))
            path.addLine(to: .zero)
            path.close()
            return path
        }()

    let shapeLayer : CAShapeLayer = {
        let shape = CAShapeLayer()
        shape.strokeColor = UIColor.brown.cgColor
        shape.lineWidth = 5
        return shape
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shapeLayer.path = topPath.cgPath
        view.layer.addSublayer(shapeLayer)
    }

}
