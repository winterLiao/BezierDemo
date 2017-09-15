//
//  ViewController.m
//  BezierDemo
//
//  Created by liaowentao on 17/9/14.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "ViewController.h"
#import "BaseTestViewController.h"
#import "PointViewController.h"
#import "SquareViewController.h"
#import "CubeViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CubeViewController *vc = [[CubeViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifer = @"baseCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifer];
    if (indexPath.row == 0) {
        cell.textLabel.text = @"baseBeizerPath";
    }else if(indexPath.row == 1){
        cell.textLabel.text = @"PointBeizerPath";
    }else if(indexPath.row == 1){
        cell.textLabel.text = @"SquareBeizerPath";
    }else if(indexPath.row == 1){
        cell.textLabel.text = @"CubeBeizerPath";
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        BaseTestViewController *vc = [[BaseTestViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 1){
        PointViewController *vc = [[PointViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 2){
        SquareViewController *vc = [[SquareViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else{
        CubeViewController *vc = [[CubeViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}





@end
