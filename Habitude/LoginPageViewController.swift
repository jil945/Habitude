//
//  LoginPageViewController.swift
//  Habitude
//
//  Created by Peter  Phan on 8/30/20.
//

import UIKit
import GoogleSignIn

class LoginPageViewController: UIViewController {
    


    @IBOutlet weak var signInGoogle: GIDSignInButton!
    
    @IBAction func googleSignInPressed(_ sender: Any) {
         GIDSignIn.sharedInstance().signIn()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
