//
//  DFViewController.m
//  ButtonBlock
//
//  Created by ta on 15-3-26.
//  Copyright (c) 2015年 yuan. All rights reserved.
//

#import "DFViewController.h"
#import "UIButton+WithBlock.h"
@interface DFViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;

@end

@implementation DFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSString* str=@"click";
    
    [self.button1 addTarget:self withBlock:^(UIButton* clickButton){NSLog(@"str is : %@",str);} forControlEvents:UIControlEventTouchUpInside];
    
    self.button2.tag=100;
    
    [self.button2 addTarget:self withBlock:^(UIButton* clickButton){NSLog(@"button2 tag is : %d",clickButton.tag);} forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
