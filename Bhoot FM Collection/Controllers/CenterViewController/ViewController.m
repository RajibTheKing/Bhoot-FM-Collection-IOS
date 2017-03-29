//
//  ViewController.m
//  Bhoot FM Collection
//
//  Created by Rajib Chandra Das on 3/19/17.
//  Copyright © 2017 Rajib Chandra Das. All rights reserved.
//

#import "ViewController.h"
#import "MMDrawerController.h"
#import "AppDelegate.h"

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


- (IBAction)leftBtnAction:(id)sender
{
    NSLog(@"Inside LeftBtnAction");
    AppDelegate *app = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [app.drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    
}

- (IBAction)rightBtnAction:(id)sender
{
    NSLog(@"Inside rightBtnAction");
    AppDelegate *app = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [app.drawerController toggleDrawerSide:MMDrawerSideRight animated:YES completion:nil];
    
}

- (IBAction)testBtnAction:(id)sender
{
    NSLog(@"Inside testBtnAction");
}

- (void)HandleActionTest
{
    NSLog(@"Found an Action");
    
}
#pragma mark Singleton Methods
+ (id)sharedManager
{
    static ViewController *sharedViewController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedViewController = [[self alloc] init];
    });
    return sharedViewController;
}
@end
