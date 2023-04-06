//
//  PillsView.swift
//  Pills
//
//  Created by Art Karma on 5/7/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

struct Pill {
    
    var maxX = Int()
    var maxY = Int()
    
    init(maxX: Int, maxY: Int) {
        self.maxX = maxX
        self.maxY = maxY
    }
}

class PillsView: UIView {
    
    let interactor: Interactor!
    
    var maxX: Int
    var maxY: Int
    
    init (pill: Pill, interactor: Interactor) {
        
        self.interactor = interactor
        
        self.maxX = pill.maxX
        self.maxY = pill.maxY
        
        super.init(frame: CGRect())
        
        self.frame = CGRect(x: Int.random(in: 0...maxX), y: Int.random(in: 0...maxY), width: Int.random(in: 1...50), height: Int.random(in: 1...50))
        self.layer.cornerRadius = (self.bounds.size.width * self.bounds.size.height).squareRoot() / 2
        self.backgroundColor = UIColor.random()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
