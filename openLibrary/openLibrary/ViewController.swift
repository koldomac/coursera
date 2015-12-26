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
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblAuthors: UILabel!
    @IBOutlet var imgCover: UIImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtISBN.delegate = self
        //self.txtISBN.text = "0373165137"
        self.lblTitle.text = ""
        self.lblAuthors.text = ""
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
            do {
                let json = try NSJSONSerialization.JSONObjectWithData(datos!, options:  NSJSONReadingOptions.MutableLeaves)
                let dic1 = json as! NSDictionary
                
                let dic2 = dic1["ISBN:"+self.txtISBN.text!] as! NSDictionary
                
                let title : String = dic2["title"] as! NSString as String
                self.lblTitle.text = title
                
                let dic3 = dic2["authors"] as! NSArray
                
                var authors : String = ""
                for item in dic3 {
                    let obj = item as! NSDictionary
                    authors += obj["name"] as! NSString as String
                }
                self.lblAuthors.text = authors
                
                let dic4 = dic2["cover"] as! NSDictionary
                let sUrl:String = dic4["medium"] as! NSString as String
                let url:NSURL = NSURL(string: sUrl)!
                let data:NSData = NSData (contentsOfURL: url)!
                self.imgCover.image = UIImage (data: data)!
                
            }
            catch _ { }
        }
    }
    
    func showAlert () {
        let alert = UIAlertController(title: "Sin conexión a Internet",
            message: "Inténtelo más tarde", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

