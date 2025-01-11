//
//  FlashcardViewModel.swift
//  StudyApp
//
//  Created by Othmane EL MARIKY on 2024-12-01.
//

import SwiftUI
import FirebaseFirestore
import FirebaseAuth

class CardsViewModel: ObservableObject {

    @Published var flashcards = [Flashcard]()
//    @Published var flashcardsSet = [FlashcardSet]()

    private var db = Firestore.firestore()

    func fetchData(selectedType: String) {
        self.db.collection("flashcards")
//            .whereField("uid", isEqualTo: String(Auth.auth().currentUser?.uid ?? ""))
            .addSnapshotListener { (querySnapshot, error) in
                guard let documents = querySnapshot?.documents else {
                    print("No documents")
                    return
                }

                self.flashcards = documents.map { (queryDocumentSnapshot) -> Flashcard in
                    let data = queryDocumentSnapshot.data()
                    let uid = data["uid"] as? String ?? ""
//                    let cardId = queryDocumentSnapshot.documentID
                    let word = data["word"] as? String ?? ""
                    let translation = data["translation"] as? String ?? ""
                    let exampleSentence = data["exampleSentence"] as? String ?? ""

                    return Flashcard(uid: uid, word: word, translation: translation, exampleSentence: exampleSentence)
                }
            }
    }
}
