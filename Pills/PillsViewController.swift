//
//  ViewController.swift
//  Pills
//
//  Created by Art Karma on 5/7/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class PillsViewController: UIViewController {
    
    var pill: Pill!
    var interactor: Interactor!
    var getPills: PillsBuilder!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        pill = Pill(maxX: Int(self.view.frame.width), maxY: Int(self.view.frame.height))
//        Storage.storage.pills = PillsBuilder().builder(maxX: Int(self.view.frame.width), maxY: Int(self.view.frame.height))
//        let square = FiguresBuilder().setFrame(CGRect(x: 300, y: 210, width: 100, height: 100)).setColor(.green).builder()
        
        _ = PillsBuilder().createPills(pill: pill, interactor: interactor)
//        getPills.createPills(pill: pill, interactor: interactor)
        
        Storage.storage.pills.forEach {
            self.view.addSubview($0)
        }
        print("load succesee")
    }


}

