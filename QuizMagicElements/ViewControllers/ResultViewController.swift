//
//  ResultViewController.swift
//  QuizMagicElements
//
//  Created by Руслан Штыбаев on 14.03.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var animalLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    
    var answers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }

    private func updateResult() {
        
        var colectionOfAnimal: [ Animal : Int ] = [:]
        let animals = answers.map { $0.animal }
        
        for animal in animals {
            if let animalTypeCount = colectionOfAnimal[animal] {
                colectionOfAnimal.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                colectionOfAnimal[animal] = 1
            }
        }
        
        let sortedColectionAnimal = colectionOfAnimal.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedColectionAnimal.first?.key else {return}
        
        updateUI(animal: mostFrequencyAnimal)
    }
    
    private func updateUI(animal: Animal) {
        animalLabel.text = "You are \(animal)"
        titleLabel.text = animal.definition
    }
}


