#import "InspectableView.h"


@implementation InspectableView

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;

    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = 1.0f;
}

@end
