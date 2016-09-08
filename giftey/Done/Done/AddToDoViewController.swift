//
//  AddToDoViewController.swift
//  Done
//
//  Created by CJS  on 6/24/16.
//  Copyright © 2016 CJS . All rights reserved.
//

import UIKit


class AddToDoViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: -
    // MARK: Actions
    @IBAction func cancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func save(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
