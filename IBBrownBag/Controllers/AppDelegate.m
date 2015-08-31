#import "AppDelegate.h"


@interface AppDelegate ()

@end


@implementation AppDelegate

#pragma mark - UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults registerDefaults:@{ @"storyboard": @"Main" }];

    NSString *storyboardName = [defaults stringForKey:@"storyboard"];

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController *viewController = [storyboard instantiateInitialViewController];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];

    return YES;
}

@end
