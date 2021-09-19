//
//  MessageViewController.swift
//  Disign
//
//  Created by ADMIMN on 19.09.2021.
//

import UIKit

class MessageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MessageCollectionViewCell", for: indexPath) as! MessageCollectionViewCell
        
        cell.titleTextLabel.text = "returnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturnreturn"
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MessageCollectionViewCell", for: indexPath)
//        let height = collectionView.contentSize.height
//        let width = cell.contentView.bounds.width
//        
//        return CGSize(width: width, height: height)
//    }
//    
}
