//
//  SearchView.h
//  IMNetworking
//
//  Created by 杨炯 on 2019/6/25.
//  Copyright © 2019 ouwen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SearchView : UIView
/**
 左边图片
 */
@property(nonatomic,strong)UIImage *image;
/**
 输入框
 */
@property(nonatomic,strong)UITextField *secrchTextField;
/**
 当搜索框点击跳转的时候用，不调用不添加
 */
@property(nonatomic,strong)UIButton *searchButton;
/**
 圆角弧度
 */
@property(nonatomic,assign)CGFloat filletValue;


@end

NS_ASSUME_NONNULL_END
