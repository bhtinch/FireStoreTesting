//
//  ViewController.swift
//  FirestoreTesting
//
//  Created by Benjamin Tincher on 6/21/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var documentTextField: UITextField!
    @IBOutlet weak var keyTextField: UITextField!
    @IBOutlet weak var valueTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func createButtonTapped(_ sender: Any) {
        let document = documentTextField.text!
        let key = keyTextField.text!
        let value = valueTextField.text!

        DatabaseManager.create(document: document, key: key, value: value)

        documentTextField.text = nil
        documentTextField.resignFirstResponder()
        keyTextField.text = nil
        keyTextField.resignFirstResponder()
        valueTextField.text = nil
        valueTextField.resignFirstResponder()
    }

    @IBAction func updateButtonTapped(_ sender: Any) {
        let document = documentTextField.text!
        let key = keyTextField.text!
        let value = valueTextField.text!

        DatabaseManager.update(document: document, key: key, value: value)

        documentTextField.text = nil
        documentTextField.resignFirstResponder()
        keyTextField.text = nil
        keyTextField.resignFirstResponder()
        valueTextField.text = nil
        valueTextField.resignFirstResponder()
    }

    @IBAction func mergeButtonTapped(_ sender: Any) {
        let document = documentTextField.text!
        let key = keyTextField.text!
        let value = valueTextField.text!

        DatabaseManager.addValueTo(document: document, key: key, value: value)

        documentTextField.text = nil
        documentTextField.resignFirstResponder()
        keyTextField.text = nil
        keyTextField.resignFirstResponder()
        valueTextField.text = nil
        valueTextField.resignFirstResponder()
    }
    
    @IBAction func fetchButtonTapped(_ sender: Any) {
        DatabaseManager.fetch()
    }
}

