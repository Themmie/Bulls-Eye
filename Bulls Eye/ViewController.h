//
//  ViewController.h
//  Bulls Eye
//
//  Created by Tyler Hemmie on 2/23/14.
//  Copyright (c) 2014 Tyler Hemmie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
@property (nonatomic, weak) IBOutlet UISlider *slider;
@property (nonatomic, weak) IBOutlet UILabel *targetLabel;
@property (nonatomic, weak) IBOutlet UILabel *scoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *roundLabel;

- (IBAction)showAlert;
- (IBAction)sliderMoved:(UISlider *)slider;
- (IBAction)startOver;
@end
