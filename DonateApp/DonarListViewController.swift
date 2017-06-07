//
//  DonarListViewController.swift
//  DonateApp
//
//  Created by Kvana iOS Dev on 6/7/17.
//  Copyright © 2017 Narendra. All rights reserved.
//

import UIKit

class DonarListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
  

    @IBOutlet weak var tableView: UITableView!
    
    var names = ["Ricky","Sweety","Data"]
    var status = ["Available","Unavailable","Not Join"]
    var mobileNumbers = ["9035426271","9087654321","8099786567"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DonarListCellIdentifier", for: indexPath)as! DonarListTableViewCell
        cell.fullNameLabel.text = names[indexPath.row]
        cell.statusLabel.text = status[indexPath.row]
        cell.donarImage.image = UIImage(named: "blood-drop")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
