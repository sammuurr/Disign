//
//  ExpensesViewController.swift
//  Disign
//
//  Created by ADMIMN on 19.09.2021.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDataSource{


    @IBOutlet var tableView: UITableView!
    @IBOutlet var chartView: UIView!
    @IBOutlet var item: UILabel!
    @IBOutlet var item2: UILabel!
    @IBOutlet var item3: UILabel!
    @IBOutlet var item4: UILabel!
    @IBOutlet var item5: UILabel!
    @IBOutlet var item6: UILabel!
    @IBOutlet var item7: UILabel!
    @IBOutlet var item8: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        
        chartView.layer.cornerRadius = 8
        chartView.layer.borderColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
        chartView.layer.borderWidth = 1
        
        item.transform = CGAffineTransform(rotationAngle: -.pi / 4)
        item2.transform = CGAffineTransform(rotationAngle: -.pi / 4)
        item3.transform = CGAffineTransform(rotationAngle: -.pi / 4)
        item4.transform = CGAffineTransform(rotationAngle: -.pi / 4)
        item5.transform = CGAffineTransform(rotationAngle: -.pi / 4)
        item6.transform = CGAffineTransform(rotationAngle: -.pi / 4)
        item7.transform = CGAffineTransform(rotationAngle: -.pi / 4)
        item8.transform = CGAffineTransform(rotationAngle: -.pi / 4)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
    
}
