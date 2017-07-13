//
//  ReusableView.swift
//  FirstTaskDemo
//
//  Created by Ahmed on 7/13/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
