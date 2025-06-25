//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Natalie Chan on 6/21/25.
//

import UIKit

class TriviaViewController: UIViewController {
    struct Question {
        let text: String
        let choices: [String]
        let correctAnswerIndex: Int
    }
    
    var allQuestions: [Question] = [
        Question(text: "Who invented the Bombe machine to break the Enigma encryption during World War II?", choices: ["Taylor Swift", "Alan Turing", "Pikachu", "Stephen Spielberg"], correctAnswerIndex: 1),
        Question(text: "In Shakespeare's Hamlet, what is the name of Hamlet's girlfriend", choices: ["Ophelial", "Patricia", "Alexandra", "Victoria"], correctAnswerIndex: 0),
        Question(text: "What is the only letter not used in any US state name?", choices:["A", "Z", "B", "Q"], correctAnswerIndex: 3),
        Question(text: "Where is a shrimp's heart", choices: [" in its eyes", "in its tail", "in its head", " in the middle of the body"], correctAnswerIndex: 2),
        Question(text: "What was the first music video to ever play on MTV?", choices: ["You Better Run by Pat Benatar", "Take on Me by A-Ha", "Video Killed the Radio Star by The Buggles", "Start Me Up by The Rolling Stones"], correctAnswerIndex: 2),
        Question(text: "Who wrote Number Nine", choices: ["Nine Inch Nails", "Taylor Swift", "The Beatles", "Jay Z"], correctAnswerIndex: 3)
    ]
    
    var currentQuestionIndex = 0
    var score = 0
    
    
 
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var choiceButtons: [UIButton]!
    @IBOutlet weak var replayButton: UIButton!
//    @IBOutlet weak var questionLabelContainerView: UIView!
    
    
    func showQuestion() {
        let question = allQuestions[currentQuestionIndex]
        questionLabel.text = question.text
        progressLabel.text = "Question: \(currentQuestionIndex + 1) / \(allQuestions.count)"
        
        for (index, button) in choiceButtons.enumerated() {
            button.setTitle(question.choices[index], for: .normal)
            button.tag = index
        }
    }
    
    // assign selectedIndex = the button user tapped on as an int (.tag)
    // if the correct answer = selectedIndex -> add 1 to score, AND go to next question
    // if current question number is bigger than total question, show score, hide all buttons
    @IBAction func choiceButtonTapped(_ sender: UIButton) {
        let selectedIndex = sender.tag
        let correctIndex = allQuestions[currentQuestionIndex].correctAnswerIndex
        if selectedIndex == correctIndex {
            score += 1
        }
        currentQuestionIndex += 1
        if currentQuestionIndex < allQuestions.count {
            showQuestion()
        } else {
            questionLabel.text = "Your score is \(score)"
            progressLabel.text = "Congratulations"
            for button in choiceButtons {
                button.isHidden = true
            }
            replayButton.isHidden = false
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showQuestion()
        replayButton.isHidden = true
        
        
        // add rounded corners to question text field
//        questionLabel.layer.cornerRadius = 50.0
//        questionLabel.clipsToBounds = true
//        questionLabel.backgroundColor = .systemBackground
        
        // add box shadow to question text field
//        questionLabelContainerView.layer.shadowColor = UIColor.black.cgColor
//        questionLabelContainerView.layer.shadowOpacity = 1.0
//        questionLabelContainerView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        questionLabelContainerView.layer.shadowRadius = 6.0
//        
//        questionLabelContainerView.clipsToBounds = false
//        questionLabelContainerView.backgroundColor = .clear
    }
    
    // hide the replay button
    // set current question from the begining, set total score back to 0
    @IBAction func replayButtonTapped(_ sender: UIButton) {
        replayButton.isHidden = true
        currentQuestionIndex = 0
        score = 0
        showQuestion()
        
        for button in choiceButtons {
            button.isHidden = false
        }
    }
    
}
