//
//  DetailViewController.h
//  TableViewTest
//
//  Created by Said Moustaoui (Étudiant) on 18-03-29.
//  Copyright © 2018 Said Moustaoui (Étudiant). All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DetailViewController : UIViewController{
    
    double latitude;
    double longitude;
}

@property(strong, nonatomic) NSArray *detailModal;

@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *detailDescription;

@property (weak, nonatomic) IBOutlet UITextView *detailTextView;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)direction:(id)sender;

@end
