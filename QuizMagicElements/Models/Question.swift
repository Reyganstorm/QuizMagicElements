//
//  Question.swift
//  QuizMagicElements
//
//  Created by Руслан Штыбаев on 05.03.2022.
//

struct Question {
    let title: String
    let answers: [Answer]
    let type: ResponceType
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponceType {
    case single
    case miltiple
    case ranges
}

enum Animal {
    case dog
    case cat
    case rabbit
    case turtle
    
    var definition: String {
        switch self {
        case .dog:
            return "придумай описание для собаки"
        case .cat:
            return "придумай описание для кошки"
        case .rabbit:
            return "придумай описание для кролика"
        case .turtle:
            return "придумай описание для черепахи"
        }
    }
}
