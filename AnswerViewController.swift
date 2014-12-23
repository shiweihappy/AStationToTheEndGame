//
//  AnswerViewController.swift
//  AStationToTheEndGame
//
//  Created by lsw on 14-12-21.
//  Copyright (c) 2014年 lsw. All rights reserved.
//

import Foundation
import UIKit

class AnswerViewController: UIViewController {
    
    let questionInfo = [
        ["答案是A", "A", "B", "C", "D"],
        ["答案是B", "A", "B", "C", "D"],
        ["答案是D", "A", "B", "C", "D"]
    ]
    let answerInfo = [1, 2, 4]
    
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var bg = UIImageView()
        bg.frame = CGRectMake(0, 0, 480, 320)
        var img = UIImage(named: "对战背景05@2x.png")
        bg.image = img
        self.view.addSubview(bg)
        
        var backBtn = UIButton()
        backBtn.frame = CGRectMake(5, 140, 50, 50)
        var arrowImg = UIImage(named: "left_arrow.png")
        backBtn.setImage(arrowImg, forState: UIControlState.Normal)
        self.view.addSubview(backBtn)
        backBtn.addTarget(self, action: "turnBack", forControlEvents: UIControlEvents.TouchUpInside)
        
        var questionLabel = UILabel()
        questionLabel.frame = CGRectMake(80, 100, 320, 80)
        questionLabel.text = questionInfo[currentQuestionIndex][0]
        questionLabel.textAlignment = .Center
        self.view.addSubview(questionLabel)
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func turnBack() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}