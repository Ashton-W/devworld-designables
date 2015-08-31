#import "View.h"

@implementation View

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self appendToLabel:NSStringFromSelector(_cmd)];
        [self configure];
    }

    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self appendToLabel:NSStringFromSelector(_cmd)];
        [self configure];
    }

    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self appendToLabel:NSStringFromSelector(_cmd)];
}

- (void)prepareForInterfaceBuilder
{
    [self appendToLabel:NSStringFromSelector(_cmd)];
}

- (void)configure
{
}

- (void)setBorderColor:(UIColor *)borderColor
{
    [self appendToLabel:NSStringFromSelector(_cmd)];
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = 2;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    [super setBackgroundColor:backgroundColor];
    [self appendToLabel:NSStringFromSelector(_cmd)];
}

#pragma mark -

- (void)appendToLabel:(NSString *)text
{
    if (!self.label) {
        self.label = [[UILabel alloc] initWithFrame:self.bounds];
        self.label.numberOfLines = 0;
        self.label.lineBreakMode = NSLineBreakByWordWrapping;
        self.label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:self.label];
        self.label.text = text;
    } else {
        self.label.text = [NSString stringWithFormat:@"%@\n%@", self.label.text, text];
    }
}

@end
