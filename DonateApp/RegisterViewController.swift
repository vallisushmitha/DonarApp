//
//  RegisterViewController.swift
//  DonateApp
//
//  Created by Kvana iOS Dev on 6/7/17.
//  Copyright © 2017 Narendra. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var tosChecked = false
    let checkboxSelected = UIImage(named: "checkBoxSelected")
    let checkboxUnselected = UIImage(named: "checkBoxUnSelected")
    
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var retypePasswordTF: UITextField!
    @IBOutlet weak var fullNameTF: UITextField!
    @IBOutlet weak var genderBtn: UIButton!
    @IBOutlet weak var bloodGroupTF: UITextField!
    @IBOutlet weak var mobileNumberTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var stateTF: UITextField!
    @IBOutlet weak var districtTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genderBtn.layer.cornerRadius = 5
        genderBtn.clipsToBounds = true
        genderBtn.layer.borderWidth = 1.0
        genderBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left

        
        userNameTF.layer.borderWidth = 1.0
        userNameTF.layer.cornerRadius = 5
        userNameTF.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        passwordTF.layer.borderWidth = 1.0
        passwordTF.layer.cornerRadius = 5
        passwordTF.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        retypePasswordTF.layer.borderWidth = 1.0
        retypePasswordTF.layer.cornerRadius = 5
        retypePasswordTF.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        fullNameTF.layer.borderWidth = 1.0
        fullNameTF.layer.cornerRadius = 5
        fullNameTF.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        genderBtn.layer.borderWidth = 1.0
        genderBtn.layer.cornerRadius = 5
        genderBtn.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        bloodGroupTF.layer.borderWidth = 1.0
        bloodGroupTF.layer.cornerRadius = 5
        bloodGroupTF.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        mobileNumberTF.layer.borderWidth = 1.0
        mobileNumberTF.layer.cornerRadius = 5
        mobileNumberTF.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        emailTF.layer.borderWidth = 1.0
        emailTF.layer.cornerRadius = 5
        emailTF.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        country.layer.borderWidth = 1.0
        country.layer.cornerRadius = 5
        country.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        stateTF.layer.borderWidth = 1.0
        stateTF.layer.cornerRadius = 5
        stateTF.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        districtTF.layer.borderWidth = 1.0
        districtTF.layer.cornerRadius = 5
        districtTF.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
        cityTF.layer.borderWidth = 1.0
        cityTF.layer.cornerRadius = 5
        cityTF.layer.borderColor = UIColor(red:0.14, green:0.74, blue:1.00, alpha:1.0).cgColor
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func checkboxTapped(_ sender: Any) {
        if(tosChecked) {
            tosChecked = false
            (sender as AnyObject).setImage(checkboxUnselected, for: UIControlState())
        } else {
            tosChecked = true
            (sender as AnyObject).setImage(checkboxSelected, for: UIControlState())
        }
    }
    
    
    @IBAction func registerTapped(_ sender: Any) {
    }
    
    @IBAction func genderButton(_ sender: Any) {
        let alertVC = UIAlertController(title: "Gender", message: "Please select gender", preferredStyle: .actionSheet)
        let maleAction = UIAlertAction(title: "Male", style: .default) { (alert: UIAlertAction!) -> Void in
            self.genderBtn.setTitle(" Male", for: .normal)
            self.genderBtn.setTitleColor(UIColor.black, for: .normal)
        }
        let femaleAction = UIAlertAction(title: "Female", style: .default) { (alert: UIAlertAction!) -> Void in
            self.genderBtn.setTitle(" Female", for: .normal)
            self.genderBtn.setTitleColor(UIColor.black, for: .normal)
            
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
        }
        alertVC.addAction(maleAction)
        alertVC.addAction(femaleAction)
        alertVC.addAction(cancel)
        present(alertVC, animated: true, completion:nil)
    }
}
