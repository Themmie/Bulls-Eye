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
    int _score;
    int _round;
   
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self startNewRound];
    [self updateLabels];
}
- (void)startNewRound {
    _round += 1;
    _targetValue = 1 + arc4random_uniform(100); _currentValue = 50;
    self.slider.value = _currentValue;}
- (void)updateLabels {
        self.targetLabel.text = [NSString stringWithFormat:@"%d", _targetValue];
        self.scoreLabel.text = [NSString stringWithFormat:@"%d", _score];
        self.roundLabel.text = [NSString stringWithFormat:@"%d", _round];
    
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showAlert {
    int difference = abs(_targetValue - _currentValue);int points = 100 - difference;
    NSString *title;
    if (difference == 0) { title = @"Perfect!"; points += 100;
    } else if (difference < 5) {
        title = @"You almost had it!";
        if (difference == 1) {
            points += 50; }
    }else if (difference < 10) {
        title = @"Pretty good!";
    } else {
        title = @"Not even close...";
    }
    _score += points;
    NSString *message = [NSString stringWithFormat:
                         @"You scored %d points", points];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                        message:message
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
}
- (IBAction)sliderMoved:(UISlider *)slider {
    _currentValue = lroundf(slider.value);
}
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    [self startNewRound]; [self updateLabels];
}
@end
