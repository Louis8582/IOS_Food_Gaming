//
//  Interest.swift
//  FOOD_Gaming
//
//  Created by louis on 2017/10/14.
//  Copyright © 2017年 louis. All rights reserved.
//

import UIKit

class Interest {
    var title = ""
    var description = ""
    var numberOfMembers = 0
    var numberOfPost = 0
    var featureImage : UIImage!
    
    init(title:String,description:String,featureImage:UIImage!){
        self.title = title
        self.description = description
        self.featureImage = featureImage
        numberOfMembers = 1
        numberOfPost = 1
    }
    
    static func createInterests()->[Interest]{
        return[
            Interest(title:"PIZZA",description:"nice",featureImage:UIImage(named:"pizza")!),
            Interest(title:"PASTS",description:"nice",featureImage:UIImage(named:"pasta")!),
            Interest(title:"STEAK",description:"nice",featureImage:UIImage(named:"steak")!)
        ]
    }
    
    static func createFirstStroeInterests()->[Interest]{
        return[
            Interest(title:"【高雄●食記】高盧專廚法式餐廳●高雄推薦法式料理●枕頭牛排●排餐",description:"nice",featureImage:UIImage(named:"店家1_1")!),
            Interest(title:"【高雄●食記】高盧專廚法式餐廳●高雄推薦法式料理●枕頭牛排●排餐",description:"nice",featureImage:UIImage(named:"店家1_2")!),
            Interest(title:"【高雄●食記】高盧專廚法式餐廳●高雄推薦法式料理●枕頭牛排●排餐",description:"nice",featureImage:UIImage(named:"店家1_3")!),
            Interest(title:"【高雄●食記】高盧專廚法式餐廳●高雄推薦法式料理●枕頭牛排●排餐",description:"nice",featureImage:UIImage(named:"店家1_4")!),
            Interest(title:"【高雄●食記】高盧專廚法式餐廳●高雄推薦法式料理●枕頭牛排●排餐",description:"nice",featureImage:UIImage(named:"店家1_5")!),
            Interest(title:"【高雄●食記】高盧專廚法式餐廳●高雄推薦法式料理●枕頭牛排●排餐",description:"nice",featureImage:UIImage(named:"店家1_6")!),
            Interest(title:"【高雄●食記】高盧專廚法式餐廳●高雄推薦法式料理●枕頭牛排●排餐",description:"nice",featureImage:UIImage(named:"店家1_7")!)
        ]
    }
    
    
    
    
    
    
}

