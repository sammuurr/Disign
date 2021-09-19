//
//  UserOptionsViewController.swift
//  Disign
//
//  Created by ADMIMN on 19.09.2021.
//

import UIKit

class UserOptionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var dataBase = [false, false, true, false, true, true, false, false, false, false]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataBase.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.tableFooterView = UIView()
        return tableView.dequeueReusableCell(withIdentifier: "UserOptionsTableViewCell", for: indexPath)
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! UserOptionsTableViewCell
        
        if dataBase[indexPath.row] {
            cell.imageViews.image = UIImage(named: "Radio")
            dataBase[indexPath.row] = !dataBase[indexPath.row]
        }else{
            cell.imageViews.image = UIImage(named: "Radio-1")
            dataBase[indexPath.row] = !dataBase[indexPath.row]
        }
        tableView.reloadData()
    }
}
