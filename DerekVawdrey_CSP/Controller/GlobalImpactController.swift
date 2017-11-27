//
//  GlobalImpactController.swift
//  DerekVawdrey_CSP
//
//  Created by Vawdrey, Derek on 10/26/17.
//  Copyright © 2017 Vawdrey, Derek. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class GlobalImpactController: UIViewController {

    @IBOutlet weak var impactPicture: UIImageView!
    @IBOutlet weak var appSketch: UIImageView!
    
    
    @IBOutlet weak var planForApp: UILabel!
    @IBOutlet weak var addressProblem: UILabel!
    @IBOutlet weak var personalConnection: UILabel!
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    public func setup() -> Void {
        appSketch.image = UIImage(named: "otherEnergy")
        
        addressProblem.text = "Many people are afraid of Atomic Energy because they view it as dangerous. While it is a dangerous thing if not properly used, its benefits are amazing."
        
        personalConnection.text = "Since I use electricity, I connect with Atomic Energy. I use the energy it produces every day."
        
        let location = CLLocation(latitude: 40.331106,longitude: -111.755191)
        
        let regionRadius = 100
        
        let cordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, CLLocationDistance(regionRadius), CLLocationDistance(regionRadius))
        
        let powerPlant = MKPointAnnotation()
        powerPlant.coordinate = CLLocationCoordinate2D(latitude: 40.331106,longitude: -111.755191)
        
        map.addAnnotation(powerPlant)
        
        map.setRegion(cordinateRegion, animated: true)
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
