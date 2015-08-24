//
//  GPX.Waypoint.swift
//  Trax
//
//  Created by Malcolm Macleod on 29/07/2015.
//  Copyright (c) 2015 Malcolm Macleod. All rights reserved.
//

import MapKit

class EditableWaypoint : GPX.Waypoint {
    override var coordinate : CLLocationCoordinate2D {
        get {
            return super.coordinate
        }
        set {
            latitude = newValue.latitude
            longitude = newValue.longitude
        }
    }
}

extension GPX.Waypoint : MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var title : String!{
        return name
    }
    
    var subtitle: String! {
        return info
    }
    
    var thumbnailURL : NSURL? {
        return getImageURLOfType("thumbnail")
    }
    
    var imageURL : NSURL? {
        return getImageURLOfType("large")
    }
    
    private func getImageURLOfType (type: String) -> NSURL? {
        for link  in links {
            if link.type == type {
                return link.url
            }
        }
        
        return nil
    }
}
