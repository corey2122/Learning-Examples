//
//  DetailViewController.swift
//  GiftApp
//
//  Created by CJS  on 6/28/16.
//  Copyright © 2016 CJS . All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var editButton: Bool = false
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var eventTextField: UITextField!
    @IBOutlet weak var dateTextPicker: UIDatePicker!
    @IBOutlet weak var presentTextField: UITextField!
    
    @IBOutlet weak var editDoneButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DetailViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        textFieldDeactive()
        nameTextField.text = "Corey Schwarzkopf"
        presentTextField.text = "Money"
    }
    
    
    @IBAction func editButton(sender: UIBarButtonItem) {
        
       editButton = !editButton //switches button ON/OFF
       
        
        if editButton == true {
            textFieldActive()
             self.editDoneButton.title = "Save"
//                UIBarButtonItem(title: "Save", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(DetailViewController.editButton(_:)))

        } else {
            
            self.editDoneButton.title = "Edit"
                //UIBarButtonItem(title: "Edit", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(DetailViewController.editButton(_:)))
            textFieldDeactive()
        }
    }
    
    
    
    func textFieldActive(){
      
            nameTextField.userInteractionEnabled = true
            eventTextField.userInteractionEnabled = true
            dateTextPicker.userInteractionEnabled = true
            presentTextField.userInteractionEnabled = true
        //Changes border style
            nameTextField.borderStyle = .Line
            eventTextField.borderStyle = .Line
            presentTextField.borderStyle = .Line
    }
    
   func  textFieldDeactive(){
    nameTextField.userInteractionEnabled = false
    eventTextField.userInteractionEnabled = false
    dateTextPicker.userInteractionEnabled = false
    presentTextField.userInteractionEnabled = false
    nameTextField.resignFirstResponder()
    eventTextField.resignFirstResponder()
    presentTextField.resignFirstResponder()
    //Changes back border style

        nameTextField.borderStyle = .Bezel
        eventTextField.borderStyle = .Bezel
        presentTextField.borderStyle = .Bezel

    }
    
    
    
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.valueForKey("timeStamp")!.description
            }
        }
    }


    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

