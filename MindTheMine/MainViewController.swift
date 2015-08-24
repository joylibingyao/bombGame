//
//  MainViewController.swift
//  MindTheMine
//
//  Created by Wei Chung Chuo on 8/19/15.
//  Copyright © 2015 Wei Chung Chuo. All rights reserved.
//

import UIKit
import AVFoundation
import CoreLocation

class MainViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var userLocLat: UILabel!
   
    @IBOutlet weak var userLocLong: UILabel!
    
    let locationManager = CLLocationManager()
    
    //loc
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locationManager.location!.coordinate)
        userLocLat.text = String(locationManager.location!.coordinate.latitude)
        userLocLong.text = String(locationManager.location!.coordinate.longitude)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //loc
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        print(locationManager.location!.coordinate.latitude)
        print(locationManager.location!.coordinate.longitude)
        locationManager.monitoredRegions
        locationManager.startMonitoringSignificantLocationChanges()
        
    }
    
}

