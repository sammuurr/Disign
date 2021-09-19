//
//  ProfilViewController.swift
//  Disign
//
//  Created by ADMIMN on 19.09.2021.
//

import UIKit

class ProfilViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate{
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var segmentControll: UISegmentedControl!
    var segmentFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentControll.setTitleTextAttributes([.foregroundColor : #colorLiteral(red: 0.3647058824, green: 0.6901960784, blue: 0.4588235294, alpha: 1)], for: .selected)
    }

    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            segmentFlag = false
        }else{
            segmentFlag = true
        }
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if segmentFlag{
            return collectionView.dequeueReusableCell(withReuseIdentifier: "ContentCollectionViewCell", for: indexPath) as! ContentCollectionViewCell
        }else{
            return collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath)
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = (storyboard?.instantiateViewController(withIdentifier: "alert"))!
        vc.view.frame = CGRect(x: 0, y: 0, width: Int(UIScreen().bounds.width), height: 200)
        
        present(vc, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if segmentFlag{
            return CGSize(width: 343, height: 350)
        }else{
            return CGSize(width: 343, height: 77)
        }
    }
    
}
