//
//  MarketViewController.swift
//  Disign
//
//  Created by ADMIMN on 19.09.2021.
//

import UIKit

class MarketViewController: UIViewController, UICollectionViewDataSource{
    
    @IBOutlet var searchTextField: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.layer.borderColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
        searchTextField.layer.borderWidth = 1
        searchTextField.layer.cornerRadius = 25
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MarketCollectionViewCell", for: indexPath) as! MarketCollectionViewCell
        
        return cell
    }
    
    
}
