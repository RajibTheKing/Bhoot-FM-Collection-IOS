//
//  AppDelegate.h
//  Bhoot FM Collection
//
//  Created by Rajib Chandra Das on 3/19/17.
//  Copyright © 2017 Rajib Chandra Das. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "MMDrawerController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

@property (strong, nonatomic) MMDrawerController *drawerController;

- (void)saveContext;


@end

