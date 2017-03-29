//
//  ViewController.h
//  Bhoot FM Collection
//
//  Created by Rajib Chandra Das on 3/19/17.
//  Copyright © 2017 Rajib Chandra Das. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *leftBtn;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;

- (IBAction)leftBtnAction:(id)sender;
- (IBAction)rightBtnAction:(id)sender;
- (IBAction)testBtnAction:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *testBtn;

- (void)HandleActionTest;

+ (id)sharedManager;

@end

