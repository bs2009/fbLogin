//
//  ViewController.swift
//  fbLogin
//
//  Created by William Song on 11/13/18.
//  Copyright © 2018 William Song. All rights reserved.
//

import UIKit
import CoreData
import FBSDKLoginKit

class ViewController: UIViewController,FBSDKLoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBSDKLoginButton()
        
        view.addSubview(loginButton)
        
        loginButton.frame = CGRect(x: 16, y: 300, width: view.frame.width - 32, height: 60)
        
        loginButton.delegate = self
    }
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        if error != nil
        {
            print("error")
            return
        }
        
        print("Logged with facebook")
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Logout of facebook")
    }

}

