//
//  DetailViewController.m
//  TableViewTest
//
//  Created by Said Moustaoui (Étudiant) on 18-03-29.
//  Copyright © 2018 Said Moustaoui (Étudiant). All rights reserved.
//

#import "DetailViewController.h"
#import "MapPin.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.detailModal[0];
    
    self.detailTitle.text = self.detailModal[0];
    self.detailDescription.text = self.detailModal[1];
    self.detailImageView.image = [UIImage imageNamed:self.detailModal[2]];
    
    self.button.layer.cornerRadius = 5;
    self.mapView.layer.cornerRadius = 5;
    
    if ([self.detailTitle.text isEqualToString:@"Big Ben"]) {
        self.detailTextView.text = @"Big Ben is the nickname of a bell that hangs in the clock tower at the northern end of the Houses of Parliament in Westminster, London, England.[1] Officially, the tower itself is called Elizabeth Tower. It was previously known as just the Clock Tower";
        
        latitude = 51.50072919999999;
        longitude = -0.12462540000001354;
    }
    if ([self.detailTitle.text isEqualToString:@"Buckingham Palace"]) {
        self.detailTextView.text = @"Buckingham Palace (UK: /ˈbʌkɪŋəm ˈpælɪs/[1][2]) is the London residence and administrative headquarters of the monarch of the United Kingdom.[a][3] Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning.";
        
        latitude = 51.501364;
        longitude = -0.1418899999999894;

    
    }
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span ;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = latitude;
    location.longitude = longitude;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion: region animated:YES];
    
    MapPin *ann = [[MapPin alloc]init];
    ann.coordinate = location;
    
    [self.mapView addAnnotation:ann];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)direction:(id)sender {
    
    NSString *url = [NSString stringWithFormat:@"http://maps.apple.com/maps?daddr=%f,%f", latitude, longitude];
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url] options:@{} completionHandler:nil];
}
@end
