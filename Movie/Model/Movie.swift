//
//  Movie.swift
//  Movie
//
//  Created by admin on 9/24/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
class Movie: NSObject {
    var title: String
    var content: String
    var image: String
    var rate: Float
    init(_ title: String, _ content: String, _ image: String, _ rate: Float) {
        self.title = title
        self.content = content
        self.image = image
        self.rate = rate
    }
}
