 //
//  SecondCollectionViewCell.swift
//  FOOD_Gaming
//
//  Created by louis on 2017/10/15.
//  Copyright © 2017年 louis. All rights reserved.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
    var interest: Interest!{
        didSet{
            updateUI()
        }
    }
    
    @IBOutlet weak var featuredImageView:UIImageView!
    @IBOutlet weak var interestTitleLabel:UILabel!
    
    private func updateUI(){
        interestTitleLabel?.text! = interest.title
        featuredImageView?.image! = interest.featureImage
    }
}
