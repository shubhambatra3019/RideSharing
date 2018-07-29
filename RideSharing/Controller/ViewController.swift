//
//  ViewController.swift
//  RideSharing
//
//  Created by Shubham Batra on 21/07/18.
//  Copyright © 2018 Esper. All rights reserved.
//

import UIKit
import MapKit
import RevealingSplashView

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var actionButton: RoundedShadowButton!
    @IBOutlet weak var mapView: MKMapView!
    let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "launchScreenIcon")!, iconInitialSize: CGSize(width: 80, height: 80), backgroundColor: UIColor.white)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        
        self.view.addSubview(revealingSplashView)
        revealingSplashView.animationType = SplashAnimationType.heartBeat
        revealingSplashView.startAnimation()
        
        revealingSplashView.heartAttack = true
    
    }

    @IBAction func actionButtonWasPressed(_ sender: Any) {
        actionButton.animateButton(shouldLoad: true, withMessage: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

