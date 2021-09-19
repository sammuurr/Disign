
//  ContentViewController.swift
//  Disign
//
//  Created by ADMIMN on 18.09.2021.
//

import UIKit

class ContentViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    
    @IBOutlet var searchTextField: UIView!
    @IBOutlet var collectionView: UICollectionView!
    var searchFlag = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.layer.borderColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
        searchTextField.layer.borderWidth = 1
        searchTextField.layer.cornerRadius = 25
    }
   
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 22
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if searchFlag{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentCollectionViewCell2", for: indexPath)
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentCollectionViewCell", for: indexPath) as! ContentCollectionViewCell
            return cell
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if searchFlag{
            return CGSize(width: 343, height: 40)
        }else{
            return CGSize(width: 343, height: 350)
        }
    }
    
    
    @IBAction func editingBegin(_ sender: UITextField) {
        searchFlag = true
        collectionView.reloadData()
    }
    
    @IBAction func editinEnd(_ sender: Any) {
        searchFlag = false
        collectionView.reloadData()
    }
    @IBAction func removeKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
}
