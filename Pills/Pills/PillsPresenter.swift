//
//  PillsPresenter.swift
//  Pills
//
//  Created by Art Karma on 5/7/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import Foundation

protocol Presenter {
    var message: String {get}
}

class PillsPresenter: Presenter {
    
    weak var view: PillsView?
    
    var message = "This class can createView Model for Present"
    
}
