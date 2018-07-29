//
//  DataService.swift
//  RideSharing
//
//  Created by Shubham Batra on 29/07/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference() // base url for firbase database

// A Singleton to keep all the firbase urls that can be accessed anywhere
class DataService {
    static let instance = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_DRIVERS = DB_BASE.child("drivers")
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_TRIPS = DB_BASE.child("trips")
    
    var REF_DRIVERS: DatabaseReference {
        return _REF_DRIVERS
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_TRIPS: DatabaseReference {
        return _REF_TRIPS
    }
    
    //Func to create a user in Database either a driver or a user
    func createFirebaseDBUser(uid: String, userData: Dictionary<String, Any>, isDriver: Bool) {
        if isDriver {
            REF_DRIVERS.child(uid).updateChildValues(userData)
        }
        else {
            REF_USERS.child(uid).updateChildValues(userData)
        }
    }
    
    
}
