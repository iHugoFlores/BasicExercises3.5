//
//  ViewController.m
//  UISwitchObjC
//
//  Created by Field Employee on 3/26/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *lightImg;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Boolean state = [[NSUserDefaults standardUserDefaults] boolForKey:@"switch"];
    [_mySwitch setOn:state];
    _myLabel.text = [self setLabel:state];
    _lightImg.image = [self setImage:state];
}

- (IBAction)switchStateDidChange:(id)sender {
    [[NSUserDefaults standardUserDefaults] setBool:_mySwitch.on forKey:@"switch"];
    _myLabel.text = [self setLabel:_mySwitch.on];
    _lightImg.image = [self setImage:_mySwitch.on];
}

- (NSString *)setLabel:(Boolean)state {
    return state ? @"Light On" : @"Light Off";
}

- (UIImage *)setImage:(Boolean)state {
    NSString *img = state ? @"on" : @"off";
    return [UIImage imageNamed:img];
}

@end
