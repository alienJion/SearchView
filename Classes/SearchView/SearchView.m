//
//  SearchView.m
//  IMNetworking
//
//  Created by 杨炯 on 2019/6/25.
//  Copyright © 2019 ouwen. All rights reserved.
//

#import "SearchView.h"
#import "Masonry.h"
@interface SearchView()
@property(nonatomic,strong)UIButton *imageButton;
@end
@implementation SearchView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:.8f];
        [self imageButton];
        [self secrchTextField];
        
        self.layer.cornerRadius = 10;
        self.layer.masksToBounds = YES;
    }
    return self;
}
- (void)setFilletValue:(CGFloat)filletValue{
     self.layer.cornerRadius = filletValue;
}
-(void)setImage:(UIImage *)image{
    [self.imageButton setImage:image forState:UIControlStateNormal];

}
- (UIButton *)imageButton{
    if (_imageButton == nil) {
        _imageButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_imageButton setImage:[UIImage imageNamed:@"～/Classes/SearchView/images/search.png"] forState:UIControlStateNormal];
        [_imageButton setTitle:@"" forState:UIControlStateNormal];
        [self addSubview:_imageButton];
        [_imageButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.bottom.offset(0);
            make.width.mas_equalTo(self->_imageButton.mas_height).multipliedBy(1);
        }];
    }
    return _imageButton;
}
-(UITextField *)secrchTextField{
    if (_secrchTextField == nil) {
        _secrchTextField = [[UITextField alloc]init];
        [self addSubview:_secrchTextField];
        _secrchTextField.placeholder = @"搜索";
        _secrchTextField.font = [UIFont systemFontOfSize:14.0f];
        _secrchTextField.returnKeyType = UIReturnKeySearch;
        [_secrchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.right.offset(0);
            make.left.mas_equalTo(self.imageButton.mas_right).offset(0);
        }];
    }
    return _secrchTextField;
}
-(UIButton *)searchButton{
    if (_searchButton == nil) {
        _searchButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:_searchButton];
        [_searchButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.bottom.right.offset(0);
        }];
    }
    return _searchButton;
}

@end
