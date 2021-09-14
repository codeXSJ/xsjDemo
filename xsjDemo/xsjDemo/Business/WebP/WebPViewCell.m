//
//  WebPViewCell.m
//  xsjDemo
//
//  Created by 许盛杰 on 2021/9/14.
//

#import "WebPViewCell.h"
#import "YYImage.h"
#import "YYAnimatedImageView.h"
#import "SDImageWebPCoder.h"
#import "UIImage+WebP.h"
@interface WebPViewCell()

@property (nonatomic, strong) UILabel             *label1;
@property (nonatomic, strong) UILabel             *label2;
@property (nonatomic, strong) UIImageView         *imageV;
@property (nonatomic, strong) YYAnimatedImageView *animatedView;
@end
@implementation WebPViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setUI];
    }
    return self;
}

- (void)setUI {
    

    
    _label1 = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, 120, 160)];
    _label1.text = @"加载WebP图片";
    _label1.textColor = [UIColor blackColor];
    _label1.textAlignment = NSTextAlignmentLeft;
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"webp"];
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    _imageV = [[UIImageView alloc]initWithFrame:CGRectMake(200, 20, 100, 120)];
    _imageV.image = [UIImage sd_imageWithWebPData:data];
    
    _label2 = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, ScreenWidth, 160)];
    _label2.text = @"加载WebP动图";
    _label2.textColor = [UIColor blackColor];
    _label2.textAlignment = NSTextAlignmentLeft;
    
    
    YYImage *image = [YYImage imageNamed:@"2.webp"];
    _animatedView = [[YYAnimatedImageView alloc] initWithImage:image];
    _animatedView.frame = CGRectMake(200, 20, 100, 120);
    
    UIView *xian = [[UIView alloc]initWithFrame:CGRectMake(20, 159, ScreenWidth-50, 1)];
    xian.backgroundColor = [UIColor colorWithRed:240.0/255 green:240.0/255 blue:240.0/255 alpha:1];
    [self.contentView addSubview:xian];
    
}

- (void)setRow:(NSInteger)row {
    _row = row;
    if (_row == 0) {
        [self.contentView addSubview:_label1];
        [self.contentView addSubview:_imageV];
    }
    if (_row == 1) {
        [self.contentView addSubview:_label2];
        [self.contentView addSubview:_animatedView];
    }
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

