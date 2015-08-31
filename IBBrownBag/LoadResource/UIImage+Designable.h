/**
 *  Copyright (c) 2014 Vlas Voloshin. All rights reserved.
 */

#import <UIKit/UIKit.h>


@interface UIImage (Designable)

/**
 Returns the image object associated with the specified filename from the derived main bundle.
 @discussion When called normally, this method just forwards the call to imageNamed:, but when called in IBDesignable environment, it derives the correct bundle to load the image from.
 */
+ (instancetype)imageNamedDesignable:(NSString *)imageName;

@end
