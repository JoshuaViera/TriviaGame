//
//  Trivia.swift
//  TriviaGame
//
//  Created by Joshua Viera on 12/6/18.
//  Copyright © 2018 Joshua Viera. All rights reserved.
//

import Foundation


struct Trivia: Codable {
    var results: [ResultsWrapper]
}

struct ResultsWrapper : Codable {
    var category: String
    var type: String
    var difficulty: String
    var question: String
    var correct_answer: String
    var incorrect_answers: [String]
}
