//
//  HTAppDelegate.h
//  swipePush
//
//  Created by Cloud Dai on 13-3-4.
//  Copyright (c) 2013年 liulishuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
