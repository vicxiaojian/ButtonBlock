//
//  UIButton+WithBlock.h
//  XmppTest
//
//  Created by ta on 15-3-26.
//  Copyright (c) 2015年 yuan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef  void(^actionBlock)(UIButton*);
@interface UIButton (WithBlock)

-(void)addTarget:(id)target withBlock:(actionBlock)action forControlEvents:(UIControlEvents)controlEvents;

@end
