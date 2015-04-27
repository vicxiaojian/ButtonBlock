//
//  UIButton+WithBlock.m
//  XmppTest
//
//  Created by ta on 15-3-26.
//  Copyright (c) 2015年 yuan. All rights reserved.
//

#import "UIButton+WithBlock.h"
#import <objc/runtime.h>
#import <objc/message.h>

 NSString* const targetBlock;
@implementation UIButton (WithBlock)
-(void)addTarget:(id)target withBlock:(actionBlock)action forControlEvents:(UIControlEvents)controlEvents{
    objc_setAssociatedObject(self, (__bridge const void *)(targetBlock), action, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self addTarget:self action:@selector(doBlock) forControlEvents:controlEvents];
}
     
-(void)doBlock{
    actionBlock block= objc_getAssociatedObject(self,(__bridge const void *)(targetBlock) );
    block(self);
}
@end
