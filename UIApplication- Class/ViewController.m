//
//  ViewController.m
//  UIApplication- Class
//
//  Created by apple on 2017/4/17.
//  Copyright © 2017年 Chuckie. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate,UITableViewDataSource,UITableViewDelegate>
{
     UITableView *mainTable;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable)
//    {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"您的手机支持3dtouch" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        [alert show];
//        
//        /** 注册当前view */
//        [self registerForPreviewingWithDelegate:self sourceView:self.view];
//    }
//    else
//    {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"很遗憾您的手机不支持3dtouch" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//        [alert show];
//    }
//    
//    mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
//    mainTable.delegate = self;
//    mainTable.dataSource = self;
//    [self.view addSubview:mainTable];
    [self showOrHideNavPrompt];
}
- (void)showOrHideNavPrompt
{
    NSUInteger count = 0;
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC)); // 1
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){ // 2
        if (count == 0) {
            [self.navigationItem setPrompt:@"Add photos with faces to Googlyify them!"];
        } else {
            [self.navigationItem setPrompt:nil];
        }
    });
    
    dispatch_time_t pop = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(pop, dispatch_get_main_queue(), ^{
        
    });
   
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellId = [NSString stringWithFormat:@"%ld--%ld",(long)indexPath.section,(long)indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.textLabel.text = cellId;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 15.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{
    
    CGPoint p = [mainTable convertPoint:location fromView:self.view];
    NSIndexPath *indexPath = [mainTable indexPathForRowAtPoint:p];
    UITableViewCell *cell = [mainTable cellForRowAtIndexPath:indexPath];
    DetailViewController *detail = [[DetailViewController alloc] init];
    detail.view.frame = self.view.frame;
    detail.titleString = cell.textLabel.text;
    if (indexPath.row > 6) {
        return nil;
    }
    return detail;
    
}
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
    [self showViewController:viewControllerToCommit sender:self];
}
//- (UIStatusBarStyle)preferredStatusBarStyle{
//    return UIStatusBarStyleLightContent;
//}
//- (BOOL)prefersStatusBarHidden{
//    return YES;
//}
//- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation{
//   return UIStatusBarAnimationSlide;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
