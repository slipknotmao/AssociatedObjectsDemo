//
//  ViewController.m
//  AssociatedObjectsDemo
//
//  Created by 华晓春 on 15/7/1.
//  Copyright (c) 2015年 华晓春. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+AssociatedObjects.h"
#import <objc/runtime.h>

__weak NSString *associatedColorAssign = nil;
__weak NSString *associatedColorCopy = nil;
__weak NSString *associatedColorStong = nil;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 设置关联对象 关联策略不同
    self.associatedColorAssign = [NSString stringWithFormat:@"_associatedColorAssign"];
    self.associatedColorCopy = [NSString stringWithFormat:@"_associatedColorCopy"];
    self.associatedColorStong = [NSString stringWithFormat:@"_associatedColorStong"];
    
    // 查看命中 watchpoint
    associatedColorAssign = self.associatedColorAssign;
    associatedColorStong = self.associatedColorStong;
    associatedColorCopy = self.associatedColorCopy;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    // 获取关联对象
    //NSLog(@"associatedColorAssign = %@",self.associatedColorAssign); crash
    NSLog(@"associatedColorStong = %@",self.associatedColorStong);
    // 移除所有关联对象
    //objc_removeAssociatedObjects(self);
    // 只移除对应关联结构
    objc_setAssociatedObject(self, @selector(associatedColorStong), nil, 0);
    NSLog(@"associatedColorStong = %@",self.associatedColorStong);
    NSLog(@"associatedColorCopy = %@",self.associatedColorCopy);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
