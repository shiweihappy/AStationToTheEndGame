//
//  ChooseViewController.swift
//  AStationToTheEndGame
//
//  Created by lsw on 14-12-21.
//  Copyright (c) 2014年 lsw. All rights reserved.
//

import Foundation
import UIKit

class ChooseViewController: UIViewController {
    
    @IBAction func clickAnswerViewBtn(sender: AnyObject) {
        var myView = AnswerViewController()
        self.presentViewController(myView, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}