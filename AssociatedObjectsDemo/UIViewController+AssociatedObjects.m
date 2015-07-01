//
//  UIViewController+AssociatedObjects.m
//  AssociatedObjectsDemo
//
//  Created by 华晓春 on 15/7/1.
//  Copyright (c) 2015年 华晓春. All rights reserved.
//

#import "UIViewController+AssociatedObjects.h"
#import <objc/runtime.h>

@implementation UIViewController (AssociatedObjects)

- (void)setAssociatedColorAssign:(NSString *)associatedColorAssign{
    objc_setAssociatedObject(self, @selector(associatedColorAssign), associatedColorAssign, OBJC_ASSOCIATION_ASSIGN);
}

- (NSString *)associatedColorAssign{
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setAssociatedColorStong:(NSString *)associatedColorStong{
    objc_setAssociatedObject(self, @selector(associatedColorStong), associatedColorStong, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)associatedColorStong{
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setAssociatedColorCopy:(NSString *)associatedColorCopy{
    objc_setAssociatedObject(self, @selector(associatedColorCopy), associatedColorCopy, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)associatedColorCopy{
    return objc_getAssociatedObject(self, _cmd);
}

@end
