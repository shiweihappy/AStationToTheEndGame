//
//  ViewController.swift
//  AStationToTheEndGame
//
//  Created by lsw on 14-12-21.
//  Copyright (c) 2014年 lsw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightImageView: UIImageView!
    
    var myTimer:NSTimer!
    var lightNum = 0
    
    @IBAction func clickTKBtn(sender: AnyObject) {
    }
    
    @IBAction func clickShopBtn(sender: AnyObject) {
    }
    
    @IBAction func clickAnswerBtn(sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        myTimer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "changeLightImg", userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func changeLightImg() {
        ++lightNum
        if lightNum > 12 {
            lightNum = 1
        }
        
        var img = UIImage(named: "\(lightNum).png")
        lightImageView.image = img
    }

}

