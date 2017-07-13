//
//  NewsTableViewCell.swift
//  FirstTaskDemo
//
//  Created by Ahmed on 7/12/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell, NibLoadableView, ReusableView {

    @IBOutlet weak var newsTitle_lbl: UILabel!

    @IBOutlet weak var newsImage_img: UIImageView!
    
    var data: Data!
    
    func configureCell(data: Data) {
        self.data = data
        newsTitle_lbl.text = data.title
        newsImage_img.image = UIImage(named: data.image)
    }
    
}
