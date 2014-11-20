//
//  FBMapViewController.m
//  FBLocationMap
//
//  Created by James ORourke on 25/09/2014.
//  Copyright (c) 2014 FitBugg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FBMapViewController.h"

@interface FBMapViewController ()

@end
#define IS_OS_8_OR_LATER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)

@implementation FBMapViewController
@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.mapView.delegate = self;
    self.locationManager = [[CLLocationManager alloc] init];
    [self.locationManager setDelegate:self];
    
    
    if(IS_OS_8_OR_LATER) {
        [self.locationManager requestWhenInUseAuthorization];
        //[self.locationManager requestAlwaysAuthorization];
        [self.locationManager setDistanceFilter:50];
        [self.locationManager startUpdatingLocation];
    }
    [self.mapView setShowsUserLocation:YES];
    [self.mapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:NO];
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"Where am I?";
    point.subtitle = @"I'm here!!!";
    
    [self.mapView addAnnotation:point];

}
- (void)mapView:(MKMapView *)inMapView regionDidChangeAnimated:(BOOL)animated {
    CLLocationCoordinate2D centre = [inMapView centerCoordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(centre, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:NO];

    NSLog(@"%f, %f", centre.latitude, centre.longitude);
    
}
@end
