#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface ClockView : UIView

@property (nonatomic) IBInspectable CGFloat hours;
@property (nonatomic) IBInspectable CGFloat minutes;
@property (nonatomic) IBInspectable CGFloat seconds;

@end


// dont do this though..
