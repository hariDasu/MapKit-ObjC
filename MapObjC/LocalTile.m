//
//  LocalTile.m
//  MapObjC
//
//  Created by Hari Rao on 6/2/19.
//  Copyright © 2019 hariDasu. All rights reserved.
//

#import "LocalTile.h"


@implementation LocalTile

- (void) tileFor
//:(UInt *)zoom :(UInt*)y :(Unit*)zoom
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];

    
}



@end
