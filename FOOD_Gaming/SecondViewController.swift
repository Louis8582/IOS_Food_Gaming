//
//  SecondViewController.swift
//  FOOD_Gaming
//
//  Created by louis on 2017/10/15.
//  Copyright © 2017年 louis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
 
    @IBOutlet weak var backImageView:UIImageView!
    @IBOutlet weak var collectionView:UICollectionView!
    @IBOutlet weak var currentUserProfileImageButton:UIButton!
    @IBOutlet weak var currentUserFullNameButton:UIButton!
    
    private var firstStoreInterests = Interest.createFirstStroeInterests()
    
    private struct Stroyboard{
        static let CellIdentifier = "Interest2 Cell"
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension SecondViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return firstStoreInterests.count
//        return 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Stroyboard.CellIdentifier, for: indexPath as IndexPath) as! SecondCollectionViewCell
        cell.interest = self.firstStoreInterests[indexPath.item]
        return cell
    }
}
