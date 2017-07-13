//
//  UITableView+Extension.swift
//  FirstTaskDemo
//
//  Created by Ahmed on 7/13/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell>(_nibFiles: T.Type) where T: ReusableView, T: NibLoadableView {
        //for nibFile in _nibFiles {
          let nib = UINib(nibName: T.nibName, bundle: nil)
          register(nib, forCellReuseIdentifier: T.reuseIdentifier)
        //}
    }

    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath, data: Data) -> T where T: ReusableView {
        
//        if data.type == Types.News, let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? NewsTableViewCell {
//            cell.configureCell(data: data)
//            return cell as! T
//        } else if data.type == Types.Ads, let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? AdsTableViewCell {
//            cell.configureCell(data: data)
//            return cell as! T
//        } else {
//            return UITableViewCell() as! T
//            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
//        }
        
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }

}
