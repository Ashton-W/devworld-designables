#import <UIKit/UIKit.h>

@class User;


IB_DESIGNABLE
@interface AvatarView : UIView

- (void)configureWithUser:(User *)user;

@end
