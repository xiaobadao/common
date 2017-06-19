//
//  DetailViewController.m
//  UIApplication- Class
//
//  Created by apple on 2017/4/17.
//  Copyright © 2017年 Chuckie. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.titleString;
}
- (NSArray<id<UIPreviewActionItem>> *)previewActionItems {
    UIPreviewAction *p1 = [UIPreviewAction actionWithTitle:@"选项1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"1111111");
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"111111" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }];
    
    
    UIPreviewAction *p2 = [UIPreviewAction actionWithTitle:@"选项2" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"2222222222");
    }];
    
    
    UIPreviewAction *p3 = [UIPreviewAction actionWithTitle:@"选项3" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"3333333333");
        
    }];
    
    return @[p1,p2,p3];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
