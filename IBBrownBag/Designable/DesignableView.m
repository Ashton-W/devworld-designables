#import "DesignableView.h"


@implementation DesignableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self styleLayer];
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    [self styleLayer];
    return self;
}

- (void)styleLayer
{
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = [UIColor blackColor].CGColor;
}

@end
