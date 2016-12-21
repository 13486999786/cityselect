//
//  CitySelectCtl.m
//  cityselect
//
//  Created by zj on 2016/11/1.
//  Copyright © 2016年 zj. All rights reserved.
//

#import "CitySelectCtl.h"

@interface CitySelectCtl ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView * contentView;
@property(nonatomic,strong) NSArray      * lists;
@property(nonatomic,strong) NSArray      * cityGroup;



@end

@implementation CitySelectCtl

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setData];
  
    [self setupContentView];
}

-(NSArray *)cityGroup
{
    if (!_cityGroup)
    {
        _cityGroup = [NSArray array];
    }
    return _cityGroup;
}

-(void)setData
{
    
    
    
}


-(void)setupContentView
{
    _contentView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, APPWIDTH, APPHEIGHT) style:UITableViewStylePlain];
    _contentView.delegate =self;
    _contentView.dataSource=self;
    [_contentView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:_contentView];
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.lists.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray * ar = self.lists[section];
    return ar.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = @"sdsdadsa";
    return cell;
}
//-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//    UIView * header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, APPWIDTH, 40)];
//    header.backgroundColor = [UIColor redColor];
//    UILabel * la = [[UILabel alloc]initWithFrame:CGRectMake(20, 10, 100, 20)];
//    la.text = self.cityGroup[section];
//    [header addSubview:la];
//    return header;
//}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}


@end
