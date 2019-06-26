//
//  ViewController.m
//  SearchViewDemo
//
//  Created by 杨炯 on 2019/6/26.
//  Copyright © 2019 alien. All rights reserved.
//

#import "ViewController.h"
#import <SearchView.h>
#import <Masonry.h>
@interface ViewController ()
@property(nonatomic,strong)SearchView *search;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.search = [[SearchView alloc]init];
    self.search.image = [UIImage imageNamed:@"search"];
    self.search.filletValue = 10;
    [self.search.searchButton addTarget:self action:@selector(touchSearchEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.search];
    [self.search mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(15);
        make.top.offset(100);
        make.right.offset(-15);
        make.height.offset(40);
    }];
}
-(void)touchSearchEvent:(UIButton *)btn{
    NSLog(@"您点击了搜索");
}

@end
