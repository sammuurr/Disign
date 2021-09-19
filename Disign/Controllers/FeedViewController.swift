//
//  FeedViewController.swift
//  Disign
//
//  Created by KS54 on 17.09.2021.
//

import UIKit

class FeedViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    @IBOutlet var searchTextField: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.layer.borderColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
        searchTextField.layer.borderWidth = 1
        searchTextField.layer.cornerRadius = 25
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item < 5{
            return collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath)
        }else{
            return collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item < 5{
            return CGSize(width: 343, height: 77)
        }else{
            return CGSize(width: 343, height: 228)
        }
    }
}
