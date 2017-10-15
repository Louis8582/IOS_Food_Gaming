//
//  InterestCollectionViewCell.swift
//  FOOD_Gaming
//
//  Created by louis on 2017/10/14.
//  Copyright © 2017年 louis. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    var interest: Interest!{
        didSet{
            updateUI()
        }
    }
    
    @IBOutlet weak var featureImageView : UIImageView!
//    @IBOutlet weak var InterestTitleLabel : UILabel
    private func updateUI(){
        featureImageView?.image! = interest.featureImage
    }
}
