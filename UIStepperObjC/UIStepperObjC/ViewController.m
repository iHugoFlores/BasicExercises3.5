//
//  ViewController.m
//  UIStepperObjC
//
//  Created by Field Employee on 3/26/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

UILabel *label;
UIStepper *stepper;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)updateView:(UIStepper*)stepperOne {
    label.text = [NSString stringWithFormat:@"Counter: %d", (int)stepper.value];
}

- (void)loadView {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = UIColor.whiteColor;
    
    label = [[UILabel alloc] init];
    
    stepper = [[UIStepper alloc] init];
    stepper.tintColor = UIColor.whiteColor;
    [stepper addTarget:self action:@selector(updateView:) forControlEvents:UIControlEventValueChanged];
    stepper.value = 15;
    stepper.minimumValue = -100;
    stepper.maximumValue = 100;
    stepper.stepValue = 5;
    
    [view addSubview:label];
    [view addSubview:stepper];
    
    self.view = view;
    [self updateView:nil];
    
    // Layout
    label.translatesAutoresizingMaskIntoConstraints = false;
    stepper.translatesAutoresizingMaskIntoConstraints = false;
    
    [NSLayoutConstraint activateConstraints:@[
        [label.topAnchor constraintEqualToAnchor:view.topAnchor constant:40.0],
        [label.leadingAnchor constraintEqualToAnchor:view.leadingAnchor constant:40.0],

        [stepper.leadingAnchor constraintEqualToAnchor:label.trailingAnchor constant:20.0],
        [stepper.centerYAnchor constraintEqualToAnchor:label.centerYAnchor]
     ]
    ];
}


@end
