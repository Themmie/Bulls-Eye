//
//  ViewController.m
//  Bulls Eye
//
//  Created by Tyler Hemmie on 2/23/14.
//  Copyright (c) 2014 Tyler Hemmie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    int _currentValue;
    int _targetValue;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _currentValue = self.slider.value;
    _targetValue = 1 + arc4random_uniform(100);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showAlert {
    NSString *message = [NSString stringWithFormat:
                         @"The value of the slider is: %d\nThe target value is: %d",_currentValue,_targetValue];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Hello, World!" message:message
                                                       delegate:nil
                                              cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
}
- (IBAction)sliderMoved:(UISlider *)slider {
    _currentValue = lroundf(slider.value);
}
@end
