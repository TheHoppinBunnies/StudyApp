//
//  Flashcard.swift
//  FlashCard
//
//  Created by RPS on 19/10/24.
//

import Foundation
import SwiftUI
import CoreData

struct Flashcard: Identifiable {
    var id: UUID = UUID()
    var uid: String
    var word: String
    var translation: String
    var exampleSentence: String

    init(uid: String, word: String, translation: String, exampleSentence: String) {
        self.id = UUID()
        self.uid = uid
        self.word = word
        self.translation = translation
        self.exampleSentence = exampleSentence
    }
}

struct FlashcardSet: Identifiable {
    var id: UUID = UUID()
    var title: String
    var color: String
    var numberOfFlashcards: Int
    var flashcards: [Flashcard]

    init(id: UUID, title: String, color: String, numberOfFlashcards: Int, flashcards: [Flashcard]) {
        self.id = id
        self.title = title
        self.color = color
        self.numberOfFlashcards = numberOfFlashcards
        self.flashcards = flashcards
    }
}

