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
    
    static func add(value: String, key: String) {
        db.collection("myCollection").document("myDocument").setData([value : key])
    }
}
