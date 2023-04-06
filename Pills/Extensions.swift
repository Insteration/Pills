//
//  Extensions.swift
//  Pills
//
//  Created by Art Karma on 5/7/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
    }
    
}
