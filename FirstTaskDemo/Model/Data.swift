//
//  Data.swift
//  FirstTaskDemo
//
//  Created by Ahmed on 7/12/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import Foundation

enum Types {
    case News
    case Ads
}

class Data {
    private var _type: Types!
    private var _title: String!
    private var _image: String!
    
    var type: Types {
        return _type
    }
    
    var title: String {
        return _title
    }
    
    var image: String {
        return _image
    }
    
    init(typeID: Int, title: String, image: String) {
        if typeID == 0 {
            self._type = Types.News
        } else {
            self._type = Types.Ads
        }
        self._title = title
        self._image = image
    }
    
}
