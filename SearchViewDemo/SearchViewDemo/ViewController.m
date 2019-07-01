//
//  ViewController.m
//  SearchViewDemo
//
//  Created by young on 2019/6/26.
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
    [self inputSearch];
}
-(void)inputSearch{
    self.search = [[SearchView alloc]init];
    self.search.image = [UIImage imageNamed:@"search"];
    self.search.filletValue = 10;
    [self.view addSubview:self.search];
    [self.search mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(15);
        make.top.offset(100);
        make.right.offset(-15);
        make.height.offset(40);
    }];
    
    [self.search setSearchEvnetBlock:^(NSString * _Nonnull searchKey) {
        NSLog(@"您输入的搜索内容：%@",searchKey);
    }];
    
}

@end
