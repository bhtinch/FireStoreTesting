//
//  ViewController.swift
//  FirestoreTesting
//
//  Created by Benjamin Tincher on 6/21/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var keyTextField: UITextField!
    @IBOutlet weak var valueTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButtonTapped(_ sender: Any) {
        let key = keyTextField.text!
        let value = valueTextField.text!
        
        DatabaseManager.add(value: value, key: key)
        
        keyTextField.text = nil
        keyTextField.resignFirstResponder()
        valueTextField.text = nil
        valueTextField.resignFirstResponder()
    }
    
}

