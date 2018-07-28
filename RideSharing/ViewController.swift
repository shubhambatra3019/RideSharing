//
//  ViewController.swift
//  RideSharing
//
//  Created by Shubham Batra on 21/07/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var actionButton: RoundedShadowButton!
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionButtonWasPressed(_ sender: Any) {
        actionButton.animateButton(shouldLoad: true, withMessage: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

