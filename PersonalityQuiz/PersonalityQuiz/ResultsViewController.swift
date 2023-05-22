//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Josue Manzo Gomez on 5/2/23.
//

import UIKit

class ResultsViewController: UIViewController {
    var responses: [Answer]
    @IBOutlet var resultAnswerLabel : UILabel!
    @IBOutlet var resultDefinitionLabel :UILabel!
    
    
    
    init?(coder: NSCoder, responses: [Answer]){
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
    }
    func calculatePersonalityResult(){
        let frequencyOfAnswers = responses.reduce(into:[:])
        {
            (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {
            (pair1, pair2) in
            return pair1.value > pair2.value
        })
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }


}
