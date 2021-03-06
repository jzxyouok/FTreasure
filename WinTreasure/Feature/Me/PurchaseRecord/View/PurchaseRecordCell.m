//
//  PurchaseRecordCell.m
//  WinTreasure
//
//  Created by Apple on 16/6/27.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "PurchaseRecordCell.h"

@interface PurchaseRecordCell ()

@property (nonatomic, strong) YYLabel *timeLabel;

@property (nonatomic, strong) YYLabel *statusLabel;

@property (nonatomic, strong) YYLabel *nameLabel;

@property (nonatomic, strong) YYLabel *unitPriceLabel;

@property (nonatomic, strong) YYLabel *quantityLabel;

@property (nonatomic, strong) YYLabel *paidAmoutLabel;

@property (nonatomic, strong) UIImageView *productImgView;



@end

@implementation PurchaseRecordCell

+ (instancetype)cellWithTableView:(UITableView *)tableview {
    static NSString *cellID = @"PurchaseRecordCell";
    PurchaseRecordCell *cell = [tableview dequeueReusableCellWithIdentifier:cellID];
    if(cell == nil) {
        cell = [[PurchaseRecordCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    for (UIView *view in self.subviews) {
        if([view isKindOfClass:[UIScrollView class]]) {
            ((UIScrollView *)view).delaysContentTouches = NO;
            // Remove touch delay for iOS 7
            break;
        }
    }
    self.exclusiveTouch = YES;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.contentView.backgroundColor = [UIColor whiteColor];
    if ([self respondsToSelector:@selector(setLayoutMargins:)]) {
        [self setLayoutMargins:UIEdgeInsetsZero];
    }
    [self setup];
    return self;
}

- (void)setup {
    CAShapeLayer *topLine = [CAShapeLayer layer];
    topLine.origin = CGPointMake(0, 0);
    topLine.size = CGSizeMake(kScreenWidth, kPurchaseRecordMargin);
    topLine.backgroundColor = UIColorHex(0xe5e5e5).CGColor;
    [self.layer addSublayer:topLine];
    _timeLabel = [YYLabel new];
}

- (void)setLayOut:(PurchaseRecordLayout *)layOut {

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
