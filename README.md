# RSSwitch
Custom Switch for iOS, based on UIControl class.

Primitive and easy customizable switch for iOS.

![A preview of this control](http://i.piccy.info/i9/5744c7bfd25dc3128ccd9beab742aa42/1448004349/22445/973185/Simulator_Screen_Shot_Nov_20_2015_09_24_33.png)

``` Objective-C
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

```

``` Objective-C
-(void)switchSwitched:(RSSwitch *)sender {
    NSLog(@"state: %i", sender.isOn);
}
```

## License

RSSwitch is licensed under the terms of the MIT license. Please see the [LICENSE](LICENSE) file for full details.