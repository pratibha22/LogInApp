//
//  DataManaer.swift
//  LogInSampleApp
//
//  Created by iOSDev on 14/12/18.
//  Copyright © 2018 tcs. All rights reserved.
//

import Foundation


class DataManager {
    
    static let sharedInstance = DataManager()
    var user : User?


    func setUser(userNm:String, pwd:String){
        
        user = User(userName: userNm, passwrd: pwd)
        setUserName(username: userNm)
        setPassword(username: pwd)
    }
    
    func getUser()-> User{
        let userNm = getUserName()
        let pwd = getPassword()
        user = User(userName: userNm, passwrd: pwd)
        return user!
    }
    
    
    func getUserName()->String{
        
        return UserDefaults.standard.string(forKey: "userName") ?? ""
    }
    
    func setUserName(username:String){
        UserDefaults.standard.setValue(username, forKey: "userName")
        
    }
    
    func getPassword()->String{
        
        return UserDefaults.standard.string(forKey: "password") ?? ""
    }
    
    func setPassword(username:String){
        UserDefaults.standard.setValue(username, forKey: "password")
        
    }
    


   

}


