//
//  ViewController.swift
//  Example
//
//  Created by Ava Chong on 1/27/18.
//  Copyright © 2018 Ava Chong. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UIScrollViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return(1)
    }
    
    @IBOutlet weak var dropDown: UIPickerView!
    var list = ["let girls learn","2","3"]
    
    
    //picker columns
    func numberOfComponentsInPickerView(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //picker rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    //the data to return from picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return list[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        //self.textBox.text = self.list[row]
        self.dropDown.isHidden = true
    }
    
    
    @IBOutlet weak var orgPicker: UIPickerView!
    var orgPickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    //CIRCLE
    //this wouldn't be handle tap, rather handle transaction
    @objc private func handleTap()
    {
        print("attempting to animate stroke")
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        var increment = 0.00
        
        basicAnimation.fromValue = 0
        basicAnimation.toValue = 1
        
        //to calculate byValue
        func calcByValue(amount: Double, current: Double) -> Double {
            
            return(increment)
        }
        
        basicAnimation.byValue = increment
        
        
        
        
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false //it will not disappear upon completion
        
        shapeLayer.add(basicAnimation, forKey: "basic0")
    }
    
    
    //settings button function
    @IBAction func settingsAction(_ sender: Any) {
        
    }
}

