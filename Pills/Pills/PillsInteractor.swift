//
//  PillsInteractor.swift
//  Pills
//
//  Created by Art Karma on 5/7/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import Foundation

protocol Interactor {
    init(presenter: Presenter)
}

class PillsInteractor: Interactor {
    
    var presenter: Presenter!
    
    // Buisiness Logic
    
    required init(presenter: Presenter) {
        self.presenter = presenter
    }
    
    
    
}
