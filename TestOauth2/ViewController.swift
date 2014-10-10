//
//  ViewController.swift
//  TestOauth2
//
//  Created by admin on 10/9/14.
//  Copyright (c) 2014 abdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GPPSignInDelegate {
    
    var signIn: GPPSignIn!

    @IBOutlet weak var signInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        signIn = GPPSignIn.sharedInstance() as GPPSignIn
        signIn.shouldFetchGooglePlusUser = true
        signIn.shouldFetchGoogleUserEmail = true
        signIn.delegate = self

        
        //GPPSignIn.sharedInstance().trySilentAuthentication()

    }
    
    
    
    func finishedWithAuth(auth: GTMOAuth2Authentication,  error: NSError ) -> Void{
        println("TEST")
    }
    
    func didDisconnectWithError ( error: NSError) -> Void{
        println("TEST2")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLogin(sender: UIButton) {
        
        println("Came here")
        
        //GPPSignIn.sharedInstance().trySilentAuthentication()
        
        GPPSignIn.sharedInstance().authenticate()
    }


}

