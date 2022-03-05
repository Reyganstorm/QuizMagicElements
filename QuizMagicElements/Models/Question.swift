//
//  Question.swift
//  QuizMagicElements
//
//  Created by Руслан Штыбаев on 05.03.2022.
//

struct Question {
    let title: String
    let type: ResponceType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Черепаха", animal: .turtle)
                    ]
                
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .miltiple,
                answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Обниматься", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle)
                ]
            ),
            Question(
                title: "Любите ли вы ездить на машине?",
                type: .ranges,
                answers: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Нервничаю", animal: .turtle),
                    Answer(title: "Не замечаю", animal: .rabbit),
                    Answer(title: "Нервничаю", animal: .dog)
                ]
            )
        ]
    }
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
