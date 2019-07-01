//
//  SearchView.h
//  IMNetworking
//
//  Created by young on 2019/6/25.
//  Copyright © 2019 ouwen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^SerachEventBlock)(NSString *searchKey);
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
 圆角弧度
 */
@property(nonatomic,assign)CGFloat filletValue;
/**
 点击键盘上的搜索
 */
@property(nonatomic,copy)SerachEventBlock searchEvnetBlock;

@end

NS_ASSUME_NONNULL_END
