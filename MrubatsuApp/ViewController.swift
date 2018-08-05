//
//  ViewController.swift
//  MrubatsuApp
//
//  Created by Harada Yuji on 2018/08/05.
//  Copyright © 2018年 Harada Yuji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    var currentQuestionNum: Int = 0
    
    let questions: [[String: Any]] = [
    [
        "question" : "iPhoneアプリを開発する統合環境はZcodeである",
        "answer" : false
    ],
    [
        "question" : "Xcode画面の右側にはユーティリティーズがある",
        "answer" : true
        ],
    [
        "qusetion": "UILabelは文字列を表示する際に利用する",
        "answer" : true]
    
    ]
    func showQuestion() {
        let question = questions[currentQuestionNum]
        if let que = question["question"] as? String {
            questionLabel.text = que
        }
        
       
    }
    func showAlert(message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let clone = UIAlertAction(title: "次へ",style: .cancel, handler: nil)
        alert.addAction(clone)
        present(alert, animated: true, completion: nil)
    }
    
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        showQuestion()
        
        
        
    }



    @IBAction func tappedNoButton(_ sender: UIButton) {
        checkAnswer(yourAnswer: false)
    }
    
    @IBAction func tappedYesButton(_ sender: UIButton) {
        checkAnswer(yourAnswer: true)
    }
    
    func checkAnswer(yourAnswer: Bool) {
        let question = questions[currentQuestionNum]
        if let ans = question["answer"] as? Bool {
            if yourAnswer == ans{
                showAlert(message: "正解！")
                currentQuestionNum += 1
            }else{
                showAlert(message: "不正解...")
            currentQuestionNum += 1
            }
        }else{
        }
            
            if currentQuestionNum >= questions.count {
                currentQuestionNum = 0
        
        }
            showQuestion()
        }
    }
    


