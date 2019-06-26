# SearchView
是一个能根据UI需求，快速实现的Search框。可实现输入和点击。

#使用方式：
pod 'SearchView', '~> 0.0.1'

可输入的搜索实现方式：
    SearchView *search = [[SearchView alloc]init];
    search.image = [UIImage imageNamed:@"search"];
    search.filletValue = 10;
    [self.view addSubview:search];
    [search mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(15);
        make.top.offset(100);
        make.right.offset(-15);
        make.height.offset(40);
    }];




可点击的搜索实现方式：
  SearchView *search = [[SearchView alloc]init];
  search.image = [UIImage imageNamed:@"search"];
  search.filletValue = 10;
  search.secrchTextField.placeholder = @"点击搜索框跳转";
  [search.searchButton addTarget:self action:@selector(touchSearchEvent:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:search];
  [search mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(15);
        make.top.offset(300);
        make.right.offset(-15);
        make.height.offset(40);
    }];
