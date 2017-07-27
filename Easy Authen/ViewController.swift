//
//  ViewController.swift
//  Easy Authen
//
//  Created by Com422Mac10 on 7/26/2560 BE.
//  Copyright © 2560 Com422Mac10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Imlicit
    let strDicUser = ["master":"12345","dora":"1234"]
    
    
    
    
    
    
    @IBOutlet weak var UserTextFind: UITextField!
    
    @IBOutlet weak var PasswordTextFind: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func loginButton(_ sender: Any) {
        
        //Get Value From TextField
        let strUser: String = UserTextFind.text!
        let strPassword: String = PasswordTextFind.text!
        
       print("User ==> \(strUser)")
       print("Password ==> \(strPassword)")
        
        
        //Check User
        if let strMyUser = strDicUser[strUser] {
            print("User OK")
            
            //Check Password
            
            if strPassword == PasswordTextFind.text {
                messageLabel.text = "Welcom User"
            }else{
                messageLabel.text = "Please Try Again Password False"
            }
        }else{
            print("User False")
            messageLabel.text = "No This User in my database"
        }
        
        
        
        
        
        
    } // loginButton
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

