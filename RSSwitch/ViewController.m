//
//  ViewController.m
//  RSSwitch
//
//  Created by Roman Simenok on 11/4/15.
//  Copyright © 2015 Roman Simenok. All rights reserved.
//

#import "ViewController.h"
#import "RSSwitch.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RSSwitch *myswitch = [[RSSwitch alloc] initWithFrame:CGRectMake(30, 30, 100, 50)];
    [myswitch setOnColor:[UIColor greenColor]];
    [myswitch setOffColor:[UIColor whiteColor]];
    
    // you can easily change border radius/color/width by accessing switch view layer
    [myswitch setBorderColor:[UIColor lightGrayColor]];
    myswitch.handleView.backgroundColor = [UIColor whiteColor];
    myswitch.handleView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    // switch notificate you for events UIControlEventTouchUpInside and UIControlEventTouchUpOutnside
    [myswitch addTarget:self action:@selector(switchSwitched:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:myswitch];
}

-(void)switchSwitched:(RSSwitch *)sender {
    NSLog(@"state: %i", sender.isOn);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
