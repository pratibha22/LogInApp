//
//  LogInViewController.swift
//  LogInSampleApp
//
//  Created by iOSDev on 14/12/18.
//  Copyright © 2018 tcs. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        DataManager.sharedInstance.setUser(userNm: "test", pwd: "test123")
    }
    
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        
        guard let userName = userName.text, let password = password.text else {
        
            return
        }
            
        
        let errorCode =  Validation.shared.validateUser(userNm: userName, pwd: password)
        
        switch errorCode {
        case .validaUserData:
            showAlert(message: "Login success")
        case .emptyUserdata:
            showAlert(message: "user name or password should not be empty")
        case .invalidUserdata:
            showAlert(message: "user name or password is invalid")
       
        }
        
   
    }
    
   
    
    func showAlert(message: String) {
        let msg = message
        let alert = UIAlertController(title: "Login", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
