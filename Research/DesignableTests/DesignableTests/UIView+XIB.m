#import "UIView+XIB.h"


@implementation UIView (XIB)

- (void)setupViewFromNib
{
    UIView *view = [self viewFromNib];
    [self addSubview:view];

    // add constraints to resize to fit in superview
    view.translatesAutoresizingMaskIntoConstraints = NO;

    id bindings = @{ @"view": view };
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:nil views:bindings]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:nil views:bindings]];

    if (self.backgroundColor == nil) {
        // in a storyboard or otherwise, the background color is Default
        self.backgroundColor = view.backgroundColor;
    }
}

- (UIView *)viewFromNib
{
    UINib *nib = [UINib nibWithNibName:self.nibName bundle:[NSBundle bundleForClass:[self class]]];
    NSAssert1(nib, @"Failed to load nib named: %@", self.nibName);
    UIView *view = (UIView *)[nib instantiateWithOwner:self options:nil].firstObject;
    NSAssert1([view isKindOfClass:[UIView class]], @"Nib didn't load a UIView: %@", self.nibName);
    return view;
}

- (NSString *)nibName
{
    return NSStringFromClass([self class]);
}

@end
