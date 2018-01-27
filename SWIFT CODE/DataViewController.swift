//
//  DataViewController.swift
//  Charity App
//
//  Created by Gayatri Pai on 1/26/18.
//  Copyright © 2018 Gayatri Pai. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    
    let shapeLayer = CAShapeLayer()

    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.view.backgroundColor = UIColor.white
        
        
        
        let center = view.center
        
        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi/2, endAngle: 2*CGFloat.pi, clockwise: true)
        
        shapeLayer.path = circularPath.cgPath
        
        
        shapeLayer.strokeColor = UIColor.green.cgColor //setting color of path stroke
        shapeLayer.lineWidth = 20 //setting size of path width
        
        //create background track
        
        let trackLayer = CAShapeLayer()
        
        
        trackLayer.strokeColor = UIColor.black.cgColor //setting color of path stroke (TRACK)
        trackLayer.lineWidth = 10 //setting size of path width (TRACK)
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = kCALineCapRound //round edge instead of rectangular (TRACK)
        view.layer.addSublayer(trackLayer)
        
        //end background track
        
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        shapeLayer.strokeEnd = 0
        
        shapeLayer.lineCap = kCALineCapRound //round edge instead of rectangular
        
        view.layer.addSublayer(shapeLayer)
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    //circle
    

 
    @objc private func handleTap()
    {
        print("attempting to animate stroke")
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 1
        
        basicAnimation.duration = 4 //how long it's going to take to go around
        
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false //it will not disappear upon completion
        
        shapeLayer.add(basicAnimation, forKey: "basic0")
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }


}

