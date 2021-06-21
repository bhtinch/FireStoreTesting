//
//  DatabaseManager.swift
//  FirestoreTesting
//
//  Created by Benjamin Tincher on 6/21/21.
//

import Foundation
import Firebase

struct DatabaseManager {
    static let db = Firestore.firestore()
    
    static func create(document: String, key: String, value: String) {
        db.collection("myCollection").document(document).setData([key : value])
    }
    
    static func update(document: String, key: String, value: String) {
        db.collection("myCollection").document(document).setData([key : value])
    }
    
    static func addValueTo(document: String, key: String, value: String) {
        db.collection("myCollection").document(document).setData([key : value], merge: true)
    }
    
    static func fetch() {
        db.collection("myCollection").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
    }
}
