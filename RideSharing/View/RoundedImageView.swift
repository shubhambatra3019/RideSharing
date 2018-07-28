//
//  RoundedImageView.swift
//  RideSharing
//
//  Created by Shubham Batra on 28/07/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
    }

}
