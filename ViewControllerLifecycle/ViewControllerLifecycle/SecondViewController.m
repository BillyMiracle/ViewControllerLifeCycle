//
//  SecondViewController.m
//  ViewControllerLifecycle
//
//  Created by 张博添 on 2021/9/13.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

//类的初始化方法
+ (void)initialize {
    NSLog(@"SecondPageInitialize\n");
}
//对象初始化方法
- (instancetype)init {
    self = [super init];
    NSLog(@"SecondPageInit\n");
    return self;
}
//从归档初始化
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    return self;
}
//加载视图
-(void)loadView {
    [super loadView];
    NSLog(@"SecondPageLoadView\n");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"SecondPageViewDidLoad\n");
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _testButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:_testButton];
    [_testButton setFrame:CGRectMake(200, 200, 80, 80)];
    [_testButton setTitle:@"按钮" forState:UIControlStateNormal];
    [_testButton addTarget:self action:@selector(pressButton) forControlEvents:UIControlEventTouchUpInside];
    
    _testButtonSecond = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:_testButtonSecond];
    [_testButtonSecond setFrame:CGRectMake(200, 300, 80, 80)];
    [_testButtonSecond setTitle:@"按钮2" forState:UIControlStateNormal];
    [_testButtonSecond addTarget:self action:@selector(pressButtonSecond) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)pressButton {
    NSLog(@"pressBackButton\n");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)pressButtonSecond {
    NSLog(@"pressButtonSecond\n");
    self.testButtonSecond.frame = CGRectMake(200, 300, 70, 70);
}

//将要布局子视图
-(void)viewWillLayoutSubviews {
    NSLog(@"SecondPageViewWillLayoutSubviews\n");
}
//已经布局子视图
-(void)viewDidLayoutSubviews {
    NSLog(@"SecondPageViewDidLayoutSubviews\n");
}
//已经展示
-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"SecondPageViewDidAppear\n");
}
//将要展示
-(void)viewWillAppear:(BOOL)animated {
    NSLog(@"SecondPageViewWillAppear\n");
}
//将要消失
-(void)viewWillDisappear:(BOOL)animated {
    NSLog(@"SecondPageViewWillDisappear\n");
}
//已经消失
-(void)viewDidDisappear:(BOOL)animated {
    NSLog(@"SecondPageViewDidDisappear\n");
}

-(void)dealloc {
    NSLog(@"SecondPageDealloc\n");
}

@end
