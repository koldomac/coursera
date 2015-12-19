//
//  ViewController.swift
//  openLibrary
//
//  Created by KoldoMac on 19/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var isbn : String = ""
    @IBOutlet var txtISBN: UITextField!
    @IBOutlet var txtResultado: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtISBN.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        isbn = textField.text!
        getMainISBN()
        return true
    }
    
    func getMainISBN () {
        var sUrl = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
        sUrl = sUrl + isbn
        let url = NSURL (string: sUrl)
        let datos:NSData? = NSData(contentsOfURL: url!)
        if (datos == nil) {
            showAlert()
        } else {
            let texto = NSString(data: datos!, encoding: NSUTF8StringEncoding)
            self.txtResultado.text = texto! as String
        }
    }
    
    func showAlert () {
        let alert = UIAlertController(title: "Sin conexión a Internet",
            message: "Inténtelo más tarde", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

