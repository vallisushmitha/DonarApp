//
//  ViewController.swift
//  DonateApp
//
//  Created by Kvana iOS Dev on 6/3/17.
//  Copyright © 2017 Narendra. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var categoryDetails = ["Registration","Donars List","Volunter List","Profile","Feedback","Remarks"]
    var categoryImages = ["BloodGroup","Donars","Volunter","Profile","FeedBack","Remarks"]
    
    let reuseIdentifier = "categoriesCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.categoryDetails.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CategoriesCollectionViewCell
        cell.categoriesLables.text = self.categoryDetails[indexPath.item]
        cell.categoriesImages.image = UIImage(named: categoryImages[indexPath.item])
        cell.backgroundColor = UIColor.lightGray
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(indexPath.item == 0){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let registerView:RegisterViewController = (storyboard.instantiateViewController(withIdentifier:"RegisterViewController") as? RegisterViewController)!
        self.navigationController?.pushViewController(registerView, animated: true)
        }else if(indexPath.item == 1){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let selectionView:CategoriesSelectionViewController = (storyboard.instantiateViewController(withIdentifier:"CategoriesSelectionViewController") as? CategoriesSelectionViewController)!
            self.navigationController?.pushViewController(selectionView, animated: true)
            
        }
    }
    
}

