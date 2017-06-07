//
//  CategoriesSelectionViewController.swift
//  DonateApp
//
//  Created by Kvana iOS Dev on 6/7/17.
//  Copyright © 2017 Narendra. All rights reserved.
//

import UIKit

class CategoriesSelectionViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate,UITextFieldDelegate {
    
    @IBOutlet weak var bloodGroupTF: UITextField!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var stateTF: UITextField!
    @IBOutlet weak var districtTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var pickerViewOne: UIPickerView!
    @IBOutlet weak var pickerViewTwo: UIPickerView!
    @IBOutlet weak var pickerViewThree: UIPickerView!
    @IBOutlet weak var pickerViewFour: UIPickerView!
    @IBOutlet weak var pickerViewFive: UIPickerView!
    
    var bloodGroupDetails = ["A+","A-","B+","B-","AB+","AB-","O+","O-","A1+","A1-","A2+","A2-","A1B+","A1B-","A2B+","A2B-","Bombay Blood group","INRA"]
    var countryDetails = ["INDIA","NEPAL","SRI LANKA","BANGLADESH","MALAYSIA"]
    var stateDetails = ["Andhra Pradesh","Arunachal","Assam","Bihar","Chandigarh","Chhattisgarh","Dadra and Nagar","Delhi","Goa","Gujarat","Harayana","Himachal Preadesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Lakshadweep","Madhya Pradesh","Maharashtra","manipur","Meghalaya","Mizoram","Nagaland","Odisha","Pondicherry","Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttra Pradesh","Uttranchal","West Bengal"]
    var districtDetails = ["All","Anantapur","Chittor","East Godavari","Guntur","Kadapa","Krishna","Kurnool","Nellore","Prakasam","Srikakulam","Vishakapatnam","Vizianagaram","West Godavari"]
    var city = ["All","Santhanuthalapadu","Kandukur","Kanigiri","Kondepi","Cumbum","Darsi","Markapur","Giddalur","Chirala","Parchur","Martur","Addanki","Ongole"]
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerViewOne.delegate = self
        pickerViewOne.dataSource = self
        pickerViewTwo.delegate = self
        pickerViewTwo.dataSource = self
        pickerViewThree.delegate = self
        pickerViewThree.dataSource = self
        pickerViewFour.delegate = self
        pickerViewFour.dataSource = self
        pickerViewFive.delegate = self
        pickerViewFive.dataSource = self
        pickerViewOne.isHidden = true
        pickerViewTwo.isHidden = true
        pickerViewThree.isHidden = true
        pickerViewFour.isHidden = true
        pickerViewFive.isHidden = true
        
        searchBtn.layer.cornerRadius = 5
        searchBtn.clipsToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func searchTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let registerView:DonarListViewController = (storyboard.instantiateViewController(withIdentifier:"DonarListViewController") as? DonarListViewController)!
        self.navigationController?.pushViewController(registerView, animated: true)
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == pickerViewOne){
            return bloodGroupDetails.count
        }else if (pickerView == pickerViewTwo){
            return countryDetails.count
        }else if (pickerView == pickerViewThree){
            return stateDetails.count
        }else if (pickerView == pickerViewFour){
            return districtDetails.count
        }else if (pickerView == pickerViewFive){
            return city.count
        }else{
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView == pickerViewOne){
            return bloodGroupDetails[row]
        }else if (pickerView == pickerViewTwo){
            return countryDetails[row]
        }else if (pickerView == pickerViewThree){
            return stateDetails[row]
        }else if (pickerView == pickerViewFour){
            return districtDetails[row]
        }else if (pickerView == pickerViewFive){
            return city[row]
        }else{
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if (pickerView == pickerViewOne){
            bloodGroupTF.text = bloodGroupDetails[row]
        }else if (pickerView == pickerViewTwo){
            countryTF.text = countryDetails[row]
        }else if (pickerView == pickerViewThree){
            stateTF.text = stateDetails[row]
        }else if (pickerView == pickerViewFour){
            districtTF.text = districtDetails[row]
        }else if (pickerView == pickerViewFive){
            cityTF.text = city[row]
        }
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if (textField == bloodGroupTF){
            pickerViewOne.isHidden = false
            pickerViewTwo.isHidden = true
            pickerViewThree.isHidden = true
            pickerViewFour.isHidden = true
            pickerViewFive.isHidden = true
//            searchBtn.isHidden = true
        }else if (textField == countryTF){
            pickerViewOne.isHidden = true
            pickerViewTwo.isHidden = false
            pickerViewThree.isHidden = true
            pickerViewFour.isHidden = true
            pickerViewFive.isHidden = true
//            searchBtn.isHidden = true
        }else if (textField == stateTF){
            pickerViewOne.isHidden = true
            pickerViewTwo.isHidden = true
            pickerViewThree.isHidden = false
            pickerViewFour.isHidden = true
            pickerViewFive.isHidden = true
//            searchBtn.isHidden = true
        }else if (textField == districtTF){
            pickerViewOne.isHidden = true
            pickerViewTwo.isHidden = true
            pickerViewThree.isHidden = true
            pickerViewFour.isHidden = false
            pickerViewFive.isHidden = true
//            searchBtn.isHidden = true
        }else if (textField == cityTF){
            pickerViewOne.isHidden = true
            pickerViewTwo.isHidden = true
            pickerViewThree.isHidden = true
            pickerViewFour.isHidden = true
            pickerViewFive.isHidden = false
//            searchBtn.isHidden = true
        }
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
      
    }
}
