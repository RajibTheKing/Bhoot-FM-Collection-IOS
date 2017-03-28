//
//  LeftViewController.m
//  Bhoot FM Collection
//
//  Created by Rajib Chandra Das on 3/19/17.
//  Copyright © 2017 Rajib Chandra Das. All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController
{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    cellID = @"LeftViewCell";
    menuData = @[@"All Episodes",
                 @"Offline Episodes",
                 @"Online Radio",
                 @"Rate This App",
                 @"Share This App",
                 @"Send Feedback",
                 @"More Free Apps",
                 @"About"
                 ];

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
    return [menuData count];
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
    
    cell.textLabel.text = [menuData objectAtIndex:indexPath.row];
    
    return cell;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
