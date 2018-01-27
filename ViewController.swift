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
        
        //picker did load
        self.orgPicker.delegate = self
        self.orgPicker.dataSource = self
        orgPickerData = ["Org1","Org2"]
        
        /*page control did load
        pages = [UIView?](repeating: nil, count: numPages)
        pageControl.numberOfPages = numPages
        pageControl.currentPage = 0 */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

