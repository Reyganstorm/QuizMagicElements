//
//  ResultViewController.swift
//  QuizMagicElements
//
//  Created by Руслан Штыбаев on 14.03.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var animals: [Answer] = []

    private var chosen = 2
    private var dog = 0
    private var cat = 0
    private var turttle = 0
    private var rabbit = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension ResultViewController {
    private func counAnimal(for answers: [Answer]) -> Animal {
        for answer in answers {
            switch answer.animal {
            case .dog:
               dog += 1
            case .cat:
                cat += 1
            case .rabbit:
                rabbit += 1
            case .turtle:
                turttle += 1
            }
        }
        return chosenAnimal()
    }
    
    private func chosenAnimal() -> Animal {
        if chosen == dog {return Animal.dog}
        else if chosen == cat {return Animal.cat}
        else if chosen == turttle {return Animal.turtle}
        else if chosen == rabbit {return Animal.rabbit}
        return Animal.dog
    }
}
