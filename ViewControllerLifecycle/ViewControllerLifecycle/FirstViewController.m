//
//  FirstViewController.m
//  ViewControllerLifecycle
//
//  Created by 张博添 on 2021/9/13.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

//类的初始化方法
+ (void)initialize {
    NSLog(@"initialize\n");
}
//对象初始化方法
- (instancetype)init {
    self = [super init];
    NSLog(@"init\n");
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
    NSLog(@"loadView\n");
}
//将要加载视图
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"4.viewDidLoad\n");
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *testButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:testButton];
    [testButton setFrame:CGRectMake(200, 200, 80, 80)];
    [testButton setTitle:@"按钮" forState:UIControlStateNormal];
    [testButton addTarget:self action:@selector(pressButton) forControlEvents:UIControlEventTouchUpInside];
    
}
//将要布局子视图
-(void)viewWillLayoutSubviews {
    NSLog(@"viewWillLayoutSubviews\n");
}
//已经布局子视图
-(void)viewDidLayoutSubviews {
    NSLog(@"viewDidLayoutSubviews\n");
}
//已经展示
-(void)viewDidAppear:(BOOL)animated {
    NSLog(@"viewDidAppear\n");
}
//将要展示
-(void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear\n");
}
//将要消失
-(void)viewWillDisappear:(BOOL)animated {
    NSLog(@"viewWillDisappear\n");
}
//已经消失
-(void)viewDidDisappear:(BOOL)animated {
    NSLog(@"viewDidDisappear\n");
}
//被释放
-(void)dealloc {
    NSLog(@"FirstPageDealloc\n");
}

- (void)pressButton {
    NSLog(@"pressButton\n");
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    secondViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    //[self.navigationController pushViewController:secondViewController animated:YES];
    [self presentViewController:secondViewController animated:YES completion:nil];
    
}

@end
