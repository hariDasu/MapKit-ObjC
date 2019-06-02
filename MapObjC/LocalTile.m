//
//  LocalTile.m
//  MapObjC
//
//  Created by Hari Rao on 6/2/19.
//  Copyright © 2019 hariDasu. All rights reserved.
//

#import "LocalTile.h"


@implementation LocalTile

-(nullable UIImage *) tileFor:(int *)zoom :(int *)x :(int *)y error:(NSError **)tileError
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *pathToTiles = [NSString stringWithFormat:@"%@/%lu/%lu/tile_%lu_%lu.png",
                             documentsDirectory, (unsigned long)floor, (unsigned long)zoom, (unsigned long)x, (unsigned long)y];
    NSURL *reqPath = [NSURL fileURLWithPath:pathToTiles];
    NSLog(@"%@", reqPath);
    NSError* error = nil;
    NSData *data = [NSData dataWithContentsOfURL:reqPath options:NSDataReadingUncached error:&error];
    if (error) {
        return error;
    } else {
        NSLog(@"Data has loaded successfully.");
         return [UIImage imageWithData:data];
    }
}



@end
