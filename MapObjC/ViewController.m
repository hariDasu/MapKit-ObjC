//
//  ViewController.m
//  MapObjC
//
//  Created by Hari Rao on 6/1/19.
//  Copyright © 2019 hariDasu. All rights reserved.
//

#import <GoogleMaps/GoogleMaps.h>
#import "ViewController.h"
#import "LocalTile.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:85
                                                            longitude:180
                                                                 zoom:0];
    GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView.myLocationEnabled = YES;
    self.view = mapView;
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    
//    NSInteger floor = 1;
    
    // Implement GMSTileURLConstructor
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSLog(@"%@", documentsDirectory);
    // Returns a Tile based on the x,y,zoom coordinates, and the requested floor
    GMSTileURLConstructor urls = ^(NSUInteger x, NSUInteger y, NSUInteger z) {
        NSString *pathToTiles = [NSString stringWithFormat:@"%@/2468/%lu/tile_%lu_%lu.png",
                                 documentsDirectory, (unsigned long)z, (unsigned long)x, (unsigned long)y];
        return [NSURL fileURLWithPath:pathToTiles];
    };
    
    // Create the GMSTileLayer
    GMSURLTileLayer *layer = [GMSURLTileLayer tileLayerWithURLConstructor:urls];
    
    // Display on the map at a specific zIndex
    layer.zIndex = 100;
    layer.map = mapView;
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
