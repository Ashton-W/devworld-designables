#import "UIImage+Designable.h"
#import "NSBundle+Designable.h"


@implementation UIImage (Designable)

+ (instancetype)imageNamedDesignable:(NSString *)imageName
{
#if !TARGET_INTERFACE_BUILDER
    return [self imageNamed:imageName];
#else
    return [self imageNamed:imageName inBundle:[NSBundle designableBundle] compatibleWithTraitCollection:nil];
#endif
}

@end
