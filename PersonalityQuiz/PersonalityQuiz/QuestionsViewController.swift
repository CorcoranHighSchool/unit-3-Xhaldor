//
//  QuestionsViewController.swift
//  PersonalityQuiz
//
//  Created by Josue Manzo Gomez on 4/28/23.
//

import UIKit

class QuestionsViewController: UIViewController {

    var questions: [Question] = [
        Question(
            text: "QUESITONS GO In HERE",
            type: .single,
            answers: [
                Answer(text:)]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Que1(_ sender: Any) {
        
    }
    
    @IBAction func Que2(_ sender: Any) {
        
    }
    
    @IBAction func Que3(_ sender: Any) {
        
    }
    
    @IBAction func Que4(_ sender: Any) {
        
    }
    
    
    @IBAction func AnswerSubmit(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case Que1:
            answersChosen.append(currentAnswers[0])
        case Que2:
            answersChosen.append(currentAnswers[1])
        case Que3:
            answersChosen.append(currentAnswers[2])
        case Que4:
            answersChosen.append(currentAnswers[3])
        
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
