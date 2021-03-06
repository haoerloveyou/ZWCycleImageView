//
//  YZWFirstViewController.m
//  ZWCycleImageView
//
//  Created by liam on 2017/2/13.
//  Copyright © 2017年 http://blog.csdn.net/sun2728. All rights reserved.
//

#import "YZWFirstViewController.h"


@interface YZWFirstViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(strong ,nonatomic) NSArray *dataArr;
@property(strong ,nonatomic) NSArray *nameArr;

@end

@implementation YZWFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

  
    
    self.dataArr = [[NSArray alloc] initWithObjects:
                    @"ZWCycleImageDEMOViewController",@"ImageBeautifyViewController",@"ZWCoreMotionViewController",
                    @"ZWCameraDemoViewController",@"FileListTableViewController",nil];
    
    self.nameArr = [[NSArray alloc] initWithObjects:
                    @"滚动视图,轮播图，广告页，轮播字",@"美颜",@"陀螺仪Demo",
                    @"相机，滤镜Demo",@"沙盒文件遍历，后续增加文件内容读取", nil];
    
    
    [self showMyTable];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    [self.rdv_tabBarController setTabBarHidden:NO animated:YES];
}


-(void)showMyTable
{
    UITableView *table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    table.delegate = self ;
    table.dataSource = self ;
    table.tableFooterView = [UIView new];
    [self.view addSubview:table];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dataArr count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier=@"cell";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell)
    {
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone ;
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%@",self.nameArr[indexPath.row]];
    
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"indexPath = %ld",(long)indexPath.row);
    
    Class class = NSClassFromString([self.dataArr objectAtIndex:indexPath.row]);
    [self.rdv_tabBarController setTabBarHidden:YES animated:YES];
    [self.navigationController pushViewController:[[class alloc] init] animated:YES];
}




@end
