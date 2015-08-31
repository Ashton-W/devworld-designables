#import "AvatarView.h"
#import "User.h"
#import "UIImage+Designable.h"


@interface AvatarView ()

@property (nonatomic) UIImageView *imageView;

@end


@implementation AvatarView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self setupView];
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setupView];
}

- (void)setupView
{
    self.layer.borderColor = self.tintColor.CGColor;
    self.layer.borderWidth = 2.0f;

    self.imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    [self addSubview:self.imageView];
}

- (void)layoutSubviews
{
    self.layer.cornerRadius = CGRectGetWidth(self.bounds) / 2.0f;
    self.layer.masksToBounds = YES;

    self.imageView.frame = self.bounds;

    [super layoutSubviews];
}

- (void)configureWithUser:(User *)user
{
    self.imageView.image = user.photo;
    [self setNeedsLayout];
}

- (void)tintColorDidChange
{
    [super tintColorDidChange];
    self.layer.borderColor = self.tintColor.CGColor;
}

#pragma mark - Stub Model for IB

// only called by IB
- (void)prepareForInterfaceBuilder
{
    User *user = [[User alloc] init];
    user.name = @"Ashton Williams";
    user.photo = [UIImage imageNamedDesignable:@"me"];

    [self configureWithUser:user];
}

@end
