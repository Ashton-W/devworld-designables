#import "GradientView.h"


@implementation GradientView

+ (Class)layerClass
{
    return CAGradientLayer.class;
}

- (void)updateGradient
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;

    layer.colors = @[(id)self.startColor.CGColor, (id)self.endColor.CGColor];
}

- (void)setStartColor:(UIColor *)startColor
{
    _startColor = startColor;
    [self updateGradient];
}

- (void)setEndColor:(UIColor *)endColor
{
    _endColor = endColor;
    [self updateGradient];
}

@end
