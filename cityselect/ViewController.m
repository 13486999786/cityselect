//
//  ViewController.m
//  cityselect
//
//  Created by zj on 2016/11/1.
//  Copyright © 2016年 zj. All rights reserved.
//

#import "ViewController.h"
#import "CitySelectCtl.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CitySelectCtl * city = [[CitySelectCtl alloc]init];
    [self presentViewController:city animated:YES completion:nil];
}



@end
