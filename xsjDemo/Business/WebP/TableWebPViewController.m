//
//  TableWebPViewController.m
//  xsjDemo
//
//  Created by 许盛杰 on 2021/9/13.
//

#import "TableWebPViewController.h"

#import "WebPViewCell.h"
@interface TableWebPViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView             *tableView;
 
@end
@implementation TableWebPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"加载WebP图片、WebP动图";
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
    return 2;
}
#pragma mark 设置cell每行的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 160;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WebPViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WebPCell"];
    if (!cell)
    {
        cell = [[WebPViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"WebPCell"];
    }
    cell.row = indexPath.row;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
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
