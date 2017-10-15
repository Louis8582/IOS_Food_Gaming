//
//  ViewController.swift
//  FOOD_Gaming
//
//  Created by louis on 2017/10/14.
//  Copyright © 2017年 louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var hotButton: UIButton!
    
    @IBOutlet weak var backIMage: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var currentUserProfileImageButton: UIButton!
    @IBOutlet weak var currentUserFullNameButton: UIButton!
    
    private var interest = Interest.createInterests()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hotButton.setImage(UIImage(named:"pasta")?.withRenderingMode(.alwaysOriginal), for: UIControlState.normal)
        hotButton.imageView?.contentMode = .scaleAspectFill
        
        hotButton.layer.cornerRadius = 15
        hotButton.clipsToBounds = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private struct Stroyboard{
        static let CellIdentifier = "Interest Cell"
    }
    
    
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

extension ViewController : UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interest.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Stroyboard.CellIdentifier, for: indexPath as IndexPath) as! InterestCollectionViewCell
        cell.interest = self.interest[indexPath.item]
        return cell
    }
}






