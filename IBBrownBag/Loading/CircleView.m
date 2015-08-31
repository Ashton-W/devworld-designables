#import "CircleView.h"


@implementation CircleView

- (void)layoutSubviews
{
    self.layer.cornerRadius = CGRectGetWidth(self.bounds) / 2.0f;
    self.layer.masksToBounds = YES;

    [super layoutSubviews];
}

@end
