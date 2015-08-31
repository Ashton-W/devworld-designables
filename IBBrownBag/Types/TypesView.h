#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface TypesView : UIView

@property (nonatomic) IBInspectable NSInteger aInteger;
@property (nonatomic) IBInspectable CGFloat aFloat;
@property (nonatomic) IBInspectable double aDouble;
@property (nonatomic) IBInspectable BOOL aBool;

@property (nonatomic) IBInspectable CGPoint bCenter;
@property (nonatomic) IBInspectable CGSize bSize;
@property (nonatomic) IBInspectable CGRect cRect;

@property (nonatomic, copy) IBInspectable NSString *string;
@property (nonatomic) IBInspectable UIColor *color;
@property (nonatomic) IBInspectable UIImage *image;


#pragma mark - Don't work

@property (nonatomic) IBInspectable UIFont *fontsDontWork;
@property (nonatomic) IBInspectable UIKeyboardType enumsDontWork;

@end
