//
//  MapPin.h
//  TableViewTest
//
//  Created by Said Moustaoui (Étudiant) on 18-03-29.
//  Copyright © 2018 Said Moustaoui (Étudiant). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface MapPin : NSObject <MKAnnotation>{
    CLLocationCoordinate2D coordinate;
}

@property (nonatomic, assign)CLLocationCoordinate2D coordinate;

@end
