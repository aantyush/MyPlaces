//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Anton Antyushin on 03.08.2020.
//  Copyright © 2020 Anton Antyushin. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
