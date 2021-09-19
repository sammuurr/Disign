//
//  Content
// CollectionViewCell.swift
//  Disign
//
//  Created by ADMIMN on 18.09.2021.
//

import UIKit

class ContentCollectionViewCell: UICollectionViewCell, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContenFillCollectionViewCell", for: indexPath) as! ContenFillCollectionViewCell
        
        cell.pageControll.currentPage = indexPath.item
        
        return cell
    }
    
}
