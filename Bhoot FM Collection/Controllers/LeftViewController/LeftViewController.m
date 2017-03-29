//
//  LeftViewController.m
//  Bhoot FM Collection
//
//  Created by Rajib Chandra Das on 3/19/17.
//  Copyright © 2017 Rajib Chandra Das. All rights reserved.
//

#import "LeftViewController.h"

#import "ViewController.h"
#import "RightViewController.h"


@interface LeftViewController ()

@end

@implementation LeftViewController
{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    cellID = @"LeftViewCell";
    self.menuData = [[NSMutableArray alloc]
                     initWithArray:@[@"All Episodes",
                                     @"Offline Episodes",
                                     @"Online Radio",
                                     @"Rate This App",
                                     @"Share This App",
                                     @"Send Feedback",
                                     @"More Free Apps",
                                     @"About",
                                     ]];

    //- (void)insertRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation: (UITableViewRowAnimation)animation;
    // Do any additional setup after loading the view.
    
    self.leftTableView.dataSource = self;
    self.leftTableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.menuData count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil)
    {
        cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [self.menuData objectAtIndex:indexPath.row];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"TheKing--> I am inside Action didSelectRowAtIndexPath %i", (int)indexPath.row);
    
    [self.leftTableView beginUpdates];
    
    
    NSObject *temp = [self.menuData objectAtIndex:0];
    [self.menuData replaceObjectAtIndex:0 withObject:[_menuData objectAtIndex:indexPath.row]];
    [self.menuData replaceObjectAtIndex:indexPath.row withObject:temp];
    
    /*
    [self.menuData removeObjectAtIndex:indexPath.row];
    [self.leftTableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    */
    [self.leftTableView reloadData];
    [self.leftTableView endUpdates];
    
    [[ViewController sharedManager] HandleActionTest];
    [[RightViewController sharedManager] HandleActionTest];
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark Singleton Methods
+ (id)sharedManager
{
    static LeftViewController *sharedLeftViewController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedLeftViewController = [[self alloc] init];
    });
    return sharedLeftViewController;
}

@end
