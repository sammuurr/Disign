//
//  MessageViewController.swift
//  Disign
//
//  Created by ADMIMN on 19.09.2021.
//

import UIKit

class MessageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    var dataBase = [Message(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis. ", forMe: false),
                    Message(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ", forMe: true),
                    Message(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ", forMe: true),
                    Message(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis. ", forMe: false),
                    
    ]
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var searchTextField: UIView!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.keyboardCheck()
        
        searchTextField.layer.borderColor = #colorLiteral(red: 0.9098039216, green: 0.9098039216, blue: 0.9098039216, alpha: 1)
        searchTextField.layer.borderWidth = 1
        searchTextField.layer.cornerRadius = 25
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataBase.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if dataBase[indexPath.item].forMe{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MessageCollectionViewCell2", for: indexPath) as! MessageCollectionViewCell
            
            cell.titleTextLabel.text = dataBase[indexPath.item].text
            
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MessageCollectionViewCell", for: indexPath) as! MessageCollectionViewCell
            
            cell.titleTextLabel.text = dataBase[indexPath.item].text
            
            return cell
        }
    }
    
    @IBAction func sendButton(_ sender: Any) {
        if textField.hasText{
            dataBase.append(Message(text: textField.text!, forMe: true))
            collectionView.reloadData()
            textField.text = ""
            
        }
    }
    
    @IBAction func hide(_ sender: Any) {
        view.endEditing(true)
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}




extension UIViewController {

    func keyboardCheck() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }

}
