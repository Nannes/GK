//
//  ViewController.swift
//  GK
//
//  Created by Nainesh Jethwa on 9/29/17.
//  Copyright © 2017 Nainesh Jethwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    
    var pickedAnswer : Bool = false
    
    var questionNumber : Int = 0
    
    var score : Int = 0
    
    
    

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            
            pickedAnswer = true
        }
        else if sender.tag == 2{
            
            pickedAnswer = false
            
        }
    checkAnswer()
    questionNumber += 1
     nextQuestion()
        
        }
    
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
        
    }
    func nextQuestion()  {
        if questionNumber < 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
            
            
        }else {
           
            let alert = UIAlertController(title: "Thanks", message: "You have finished this wanna restart ?", preferredStyle:.alert)
           
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
                
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
            
        }
        
        
    }
    func checkAnswer() {
        
        
        let correctAnswer = allQuestions.list[questionNumber].answer
  
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct")
            
            
            score += 1
            
        }
        else {
            ProgressHUD.showError("Wrong")
        }
    }
    func startOver()  {
        score = 0
        questionNumber = 0
        nextQuestion()
        
    }
}

