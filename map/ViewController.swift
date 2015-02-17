//
//  ViewController.swift
//  map
//
//  Created by Siti Azreena on 2/17/15.
//  Copyright (c) 2015 Brainstorm Technologies Sdn Bhd. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //1
        let location = CLLocationCoordinate2D(latitude: 24.46830,longitude:39.61080)
        
        //2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center:location, span:span)
        mapView.setRegion(region, animated:true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Masjid Nabawi"
        annotation.subtitle = "Madinah"
        mapView.addAnnotation(annotation)
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

