#import "TypesView.h"


@implementation TypesView

- (void)setImage:(UIImage *)image
{
    _image = image;

    self.backgroundColor = [UIColor colorWithPatternImage:image];
}

@end
