//
//  ViewController.m
//  MapObjC
//
//  Created by Hari Rao on 6/1/19.
//  Copyright © 2019 hariDasu. All rights reserved.
//

#import "ViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                            longitude:151.20
                                                                 zoom:6];
    GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    self.view = mapView;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView;
}

- (void)viewWillAppear:(BOOL)animated {
//    // Create a GMSCameraPosition that tells the map to display the
//    // coordinate -33.86,151.20 at zoom level 6.
//    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
//                                                            longitude:151.20
//                                                                 zoom:6];
//    GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
//    mapView.myLocationEnabled = YES;
//    self.view = mapView;
//    
//    // Creates a marker in the center of the map.
//    GMSMarker *marker = [[GMSMarker alloc] init];
//    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
//    marker.title = @"Sydney";
//    marker.snippet = @"Australia";
//    marker.map = mapView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"testing");
}




@end
