#import "FormTextField.h"
#import "UIView+XIB.h"


@interface FormTextField ()

@property (nonatomic) IBOutlet UILabel *fieldLabel;

@end


@implementation FormTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configure];
    }

    return self;
}

- (instancetype)initWithCoder:(NSCoder *)decoder
{
    self = [super initWithCoder:decoder];
    if (self) {
        [self configure];
    }

    return self;
}

- (void)configure
{
    [self setupViewFromNib];
}

- (void)setLabel:(NSString *)label
{
    _label = [label copy];
    self.fieldLabel.text = _label;
}

@end
