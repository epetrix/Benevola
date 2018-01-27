//
//  ViewController.swift
//  Example
//
//  Created by Ava Chong on 1/27/18.
//  Copyright © 2018 Ava Chong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UIScrollViewDelegate{
    @IBOutlet weak var pageCtrl: UIPageControl!
    @IBOutlet var pageControl: UIPageControl!

    @IBOutlet weak var settingsBtn: UIButton!
    
    //picker columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //picker rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return orgPickerData.count
    }
    
    //the data to return from picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return orgPickerData[row]
    }
    
    @IBOutlet weak var orgPicker: UIPickerView!
    var orgPickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*
        //picker did load
        self.orgPicker.delegate = self
        self.orgPicker.dataSource = self
        orgPickerData = ["Org1","Org2"]
        
        /*page control did load
        pages = [UIView?](repeating: nil, count: numPages)
        pageControl.numberOfPages = numPages
        pageControl.currentPage = 0 */
 
    */
        
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let shapeLayer = CAShapeLayer()
    
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""
    
    
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
    
    //settings button function
    
    @IBAction func settingsAction(_ sender: Any) {
    
    }
    
    
}

