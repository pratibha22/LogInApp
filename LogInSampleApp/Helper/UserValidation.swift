//
//  UserValidation.swift
//  LogInSampleApp
//
//  Created by iOSDev on 14/12/18.
//  Copyright © 2018 tcs. All rights reserved.
//

import Foundation

class Validation {
  public static let shared = Validation()
    
    func validateUser(userNm:String, pwd:String)-> ValidationCode {
        
        let user = DataManager.sharedInstance.user
        
        if userNm.isEmpty || pwd.isEmpty {
            return ValidationCode.emptyUserdata
        }
        else if (userNm != user?.userName  ||  pwd != user?.passwrd ){
            return ValidationCode.invalidUserdata
        }
        else{
            return ValidationCode.validaUserData
        }
    }
        
}
