//
//  PillsBuilder.swift
//  Pills
//
//  Created by Art Karma on 5/7/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class PillsBuilder: BuilderPills {
    
    var frame: CGRect?
    var color: UIColor?
    var cornerRadius: CGFloat?
    
    func setFrame(_ frame: CGRect) -> PillsBuilder {
        self.frame = frame
        return self
    }
    
    func setColor(_ color: UIColor) -> PillsBuilder {
        self.color = color
        return self
    }
    
    func setCornerRadius(_ radius: CGFloat) -> PillsBuilder {
        self.cornerRadius = radius
        return self
    }
    
    func createPills(pill: Pill, interactor: Interactor) -> [PillsView] {
        var pills = [PillsView]()
        
        for _ in 0...Int.random(in: 5...15) {
            pills.append(PillsView(pill: pill, interactor: interactor))
        }
        
        return pills
    }
    
    func builder(maxX: Int, maxY: Int) -> UIView {
        let presenter = PillsPresenter()
        let interactor = PillsInteractor.init(presenter: presenter)
        let view = PillsView.init(pill: Pill(maxX: maxX, maxY: maxY), interactor: interactor)
        
        view.frame = frame!
        view.backgroundColor = color
        
        if cornerRadius != nil {
            view.layer.cornerRadius = cornerRadius!
        }
        presenter.view = view
        return view
    }
    
}

