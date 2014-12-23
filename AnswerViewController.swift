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
        backBtn.addTarget(self, action: "turnBack", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(backBtn)
        
        var questionLabel = UILabel()
        questionLabel.frame = CGRectMake(80, 100, 320, 80)
        questionLabel.text = questionInfo[currentQuestionIndex][0]
        questionLabel.textAlignment = .Center
        self.view.addSubview(questionLabel)
    
        addBtn(CGRectMake(30, 210, 220, 40), tag:1)
        addBtn(CGRectMake(230, 210, 220, 40), tag:2)
        addBtn(CGRectMake(30, 260, 220, 40), tag:3)
        addBtn(CGRectMake(230, 260, 220, 40), tag:4)
        
        var timeLabel = UILabel()
        timeLabel.frame = CGRectMake(10, 20, 100, 40)
        timeLabel.text = "00:00"
        timeLabel.textAlignment = .Center
        timeLabel.backgroundColor = UIColor.blueColor()
        self.view.addSubview(timeLabel)
    }
    
    func addBtn(frame:CGRect, tag:Int) {
        var btn = UIButton()
        btn.frame = frame
        btn.tag = tag
        btn.setImage(UIImage(named: "平时状态@2x.png"), forState: .Normal)
        btn.addTarget(self, action: "judgeResult:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        
        var btnLabel = UILabel()
        btnLabel.frame = frame
        btnLabel.text = questionInfo[currentQuestionIndex][tag]
        btnLabel.textColor = UIColor.whiteColor()
        btnLabel.textAlignment = .Center
        self.view.addSubview(btnLabel)
    }
    
    func judgeResult(sender:UIButton) {
        var tag = sender.tag
        println("click btn tag is \(tag)")
        
        if (tag == answerInfo[currentQuestionIndex]) {
            sender.setImage(UIImage(named: "答对@2x.png"), forState: .Normal)
        } else {
            sender.setImage(UIImage(named: "答错@2x.png"), forState: .Normal)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func turnBack() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}