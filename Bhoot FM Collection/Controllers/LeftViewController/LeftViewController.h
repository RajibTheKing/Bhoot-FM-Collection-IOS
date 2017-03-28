//
//  LeftViewController.h
//  Bhoot FM Collection
//
//  Created by Rajib Chandra Das on 3/19/17.
//  Copyright © 2017 Rajib Chandra Das. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *menuData;
    NSString *cellID;
}
@property (weak, nonatomic) IBOutlet UITableView *leftTableView;

@end
