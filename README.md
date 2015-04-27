# ButtonBlock
Use block to make the button to add TargetAction.
    
    
    UIButton *textBtn = [UIButton new];
    
    [textBtn addAction:^(UIButton *button) {
        NSLog(@"%@ ",button);
    } forControlEvents:UIControlEventTouchUpInside];
