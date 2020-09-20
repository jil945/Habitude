//
//  LandingViewController.swift
//  
//
//  Created by Peter  Phan on 9/20/20.
//

import UIKit
import GoogleSignIn

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if GIDSignIn.sharedInstance()?.currentUser != nil {
            //signed in
            performSegue(withIdentifier: "gotoLogin", sender: self)
            print("logged in")
        }
        else{
            performSegue(withIdentifier: "gotoFeed", sender: self)
            print("not logged in")
        }

        // Do any additional setup after loading the view.
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
