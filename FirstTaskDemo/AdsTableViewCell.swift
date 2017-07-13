//
//  AdsTableViewCell.swift
//  FirstTaskDemo
//
//  Created by Ahmed on 7/13/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit

class AdsTableViewCell: UITableViewCell, NibLoadableView, ReusableView {

    @IBOutlet weak var adsImage_img: UIImageView!
    
    var data: Data!
    
    func configureCell(data: Data) {
        self.data = data
        self.adsImage_img.image = UIImage(named: data.image)
    }

}
