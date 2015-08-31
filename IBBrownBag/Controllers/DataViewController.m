#import "DataViewController.h"


@interface DataViewController ()

@end


@implementation DataViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

@end
