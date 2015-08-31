#import "SuperGradientView.h"


@implementation SuperGradientView

// called by manually and at DESIGN TIME
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self assignPropertyDefaults];
    return self;
}

// called when loaded from XIB
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    [self assignPropertyDefaults];
    return self;
}

// called after XIB
- (void)awakeFromNib
{
    [super awakeFromNib];
    //[self assignPropertyDefaults];
}

- (void)assignPropertyDefaults
{
    _startColor = [UIColor colorWithWhite:0.200 alpha:1.000];
    _endColor = [UIColor colorWithWhite:0.800 alpha:1.000];
    [self updateGradient];
}

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
