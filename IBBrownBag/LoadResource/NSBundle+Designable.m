#import "NSBundle+Designable.h"

/**
 *  Copyright (c) 2014 Vlas Voloshin. All rights reserved.
 */
@implementation NSBundle (Designable)

+ (NSBundle *)designableBundle
{
    // the inspected bundle will have ".app" in its path
    for (NSBundle *bundle in [self allBundles]) {
        if ([bundle.bundlePath hasSuffix:@".app"]) {
            return bundle;
        }
    }

    NSAssert(NO, @"Inspected bundle not found - something in IBDesignables infrastructure probably has changed.");

    return nil;
}

@end
