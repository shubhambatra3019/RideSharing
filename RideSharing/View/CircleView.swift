//
//  CircleView.swift
//  RideSharing
//
//  Created by Shubham Batra on 28/07/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class CircleView: UIView {

    override func awakeFromNib() {
        setupView()
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            setupView()
        }
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width/2
        self.layer.borderWidth = 1.5
        self.layer.borderColor = borderColor?.cgColor
    }

}
