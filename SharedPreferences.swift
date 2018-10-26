//
//  SharedPreferences.swift
//  SharedPreferences
//
//  Created by Irham Mustofa Kamil on 21/09/18.
//  Copyright © 2018 Kamil IT Consultant. All rights reserved.
//

import UIKit
class SharedPreferences{
    let PREF_NAME = "SharedPreferences-MyProject"
    func setValue(key:String,val:String){
        let preferences = UserDefaults.standard
        preferences.set(val, forKey: PREF_NAME+key)
        didSave(preferences: preferences)
    }
    func getValue(key:String) -> String {
        let preferences = UserDefaults.standard
        let cKey = PREF_NAME + key
        if preferences.string(forKey: cKey) != nil{
            let data = preferences.string(forKey: cKey)
            return data!
        } else {
            return ""
        }
    }
    func getAll(){
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            if key.count >= PREF_NAME.count{
                let mySubstring = key.prefix(PREF_NAME.count)
                if mySubstring == PREF_NAME {
                    print(getValue(key:key))
                }
            }
        }
    }
    func removeKey(key:String){
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: PREF_NAME+key)
        defaults.synchronize()
    }
    func clear(){
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            if key.count >= PREF_NAME.count{
                let mySubstring = key.prefix(PREF_NAME.count)
                if mySubstring == PREF_NAME {
                    defaults.removeObject(forKey: key)
                }
            }
        }
    }
    private func didSave(preferences: UserDefaults){
        let didSave = preferences.synchronize()
        if !didSave{
            // Couldn't Save
            print("Preferences could not be saved!")
        }
    }
    
}
