//
//  FeedViewController.swift
//  Disign
//
//  Created by KS54 on 17.09.2021.
//

import UIKit

class FeedViewController: UIViewController, UICollectionViewDataSource{

    
    override func viewDidLoad() {
        super.viewDidLoad()
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
}
