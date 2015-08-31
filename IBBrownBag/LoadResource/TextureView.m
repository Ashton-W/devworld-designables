#import "TextureView.h"
#import "UIImage+Designable.h"


@implementation TextureView

- (void)layoutSubviews
{
    [super layoutSubviews];

    self.backgroundColor = [UIColor colorWithPatternImage:self.image];
}

- (UIImage *)image
{
    //return [UIImage imageNamedDesignable:@"congruent_outline"];
    //    return [UIImage imageNamed:@"congruent_outline" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil];
    return [UIImage imageNamed:@"congruent_outline"];
}

@end
