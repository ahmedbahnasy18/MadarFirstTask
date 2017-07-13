//
//  NibLoadableView.swift
//  FirstTaskDemo
//
//  Created by Ahmed on 7/13/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
