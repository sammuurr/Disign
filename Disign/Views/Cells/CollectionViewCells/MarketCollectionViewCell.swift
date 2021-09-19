//
//  MarketCollectionViewCell.swift
//  Disign
//
//  Created by ADMIMN on 19.09.2021.
//

import UIKit

class MarketCollectionViewCell: UICollectionViewCell, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "itemcell", for: indexPath)
    }
    
    
}
