//
//  HomeViewController.m
//  webpDemo
//
//  Created by 许盛杰 on 2021/8/30.
//  Copyright © 2021 financial. All rights reserved.
//

#import "HomeViewController.h"
#import "TableWebPViewController.h"
@interface HomeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView             *tableView;
 
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"功能模块 ";
    [self initUI];
    // Do any additional setup after loading the view.
}
- (void)initUI {
  
    self.view.backgroundColor = [UIColor whiteColor];

    [self.view addSubview:self.tableView];

}

- (UITableView *)tableView {
      if (!_tableView) {
      _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0,0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
      _tableView.backgroundColor = [UIColor whiteColor];
      _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
      _tableView.showsVerticalScrollIndicator = NO;
      _tableView.delegate = self;
      _tableView.dataSource = self;
      }
     return _tableView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
#pragma mark 设置cell每行的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 3) {
        return 280;
    }
    return 80;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
    }
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, ScreenWidth-50, 80)];
    label.textColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentLeft;
    label.numberOfLines = 0;
    [cell.contentView addSubview:label];
    if (indexPath.row == 0) {
        label.text = @"1、加载WebP图片、WebP动图";
    }
    
    UIView *xian = [[UIView alloc]initWithFrame:CGRectMake(20, 79, ScreenWidth, 1)];
    xian.backgroundColor = [UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    [cell.contentView addSubview:xian];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    if (indexPath.row == 0) {
        TableWebPViewController *vc = [[TableWebPViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }

}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

