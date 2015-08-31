#import "TrafficLightsView.h"
#import "CircleView.h"


@interface TrafficLightsView ()

@property (nonatomic) IBOutlet CircleView *redLight;
@property (nonatomic) IBOutlet CircleView *orangeLight;
@property (nonatomic) IBOutlet CircleView *greenLight;

@end


@implementation TrafficLightsView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self loadViewFromNib];
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    [self loadViewFromNib];
    return self;
}

- (void)loadViewFromNib
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSArray *contents = [bundle loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
    UIView *view = contents.firstObject;
    view.frame = self.bounds;

    [self addSubview:view];
}

- (void)setGoGoGo:(BOOL)goGoGo
{
    _goGoGo = goGoGo;

    if (goGoGo) {
        self.redLight.alpha = 0.5f;
        self.orangeLight.alpha = 0.5f;
        self.greenLight.alpha = 1.0f;
    } else {
        self.redLight.alpha = 1.0f;
        self.orangeLight.alpha = 0.5f;
        self.greenLight.alpha = 0.5f;
    }
}

@end
