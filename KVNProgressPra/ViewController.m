//
//  ViewController.m
//  KVNProgressPra
//
//  Created by ling toby on 8/9/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ViewController.h"
#import "KVNProgress.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showSuccessProgress:(id)sender {
    [KVNProgress setConfiguration:[KVNProgressConfiguration defaultConfiguration]];
    [KVNProgress showWithStatus:@"Loading"];
    
    [KVNProgress showSuccessWithStatus:@"Success"];
    [self performSelector:@selector(dismissProgress) withObject:nil afterDelay:0.7];
}


- (void)dismissProgress
{
    [KVNProgress dismiss];
}


@end
