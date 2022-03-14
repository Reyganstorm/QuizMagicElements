//
//  QuestionsViewController.swift
//  QuizMagicElements
//
//  Created by Руслан Штыбаев on 14.03.2022.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionProgressView: UIProgressView!
    
    @IBOutlet var singleStackView: UIStackView!
    
    @IBOutlet var singleButtons: [UIButton]!
    
    private let question = Question.getQuestions()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
