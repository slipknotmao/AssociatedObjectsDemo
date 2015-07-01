//
//  UIViewController+AssociatedObjects.h
//  AssociatedObjectsDemo
//
//  Created by 华晓春 on 15/7/1.
//  Copyright (c) 2015年 华晓春. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (AssociatedObjects)

@property (assign, nonatomic) NSString *associatedColorAssign;
@property (strong, nonatomic) NSString *associatedColorStong;
@property (copy, nonatomic) NSString *associatedColorCopy;

@end
