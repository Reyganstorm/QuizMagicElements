//
//  Question.swift
//  QuizMagicElements
//
//  Created by Руслан Штыбаев on 05.03.2022.
//

import QuartzCore

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
}
