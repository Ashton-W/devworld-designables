#import "DesignableInspectableView.h"


@implementation DesignableInspectableView

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;

    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = 5.0f;
    self.layer.cornerRadius = 3.0f;
}

@end
