//
//  ViewController.swift
//  Example
//
//  Created by Leonardo Cardoso on 06.06.17.
//  Copyright © 2017 Leonardo Cardoso. All rights reserved.
//

import UIKit
import SectionedSlider

class ViewController: UIViewController {

    @IBOutlet weak var sectionedSlider: SectionedSlider?
    @IBOutlet weak var label: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sectionedSlider?.delegate = self
        
    }


}

extension ViewController: SectionedSliderDelegate {
    
    func sectionChanged(slider: SectionedSlider, selected: Int) {
        label?.text = "Section #\(selected)"
    }
    
}
