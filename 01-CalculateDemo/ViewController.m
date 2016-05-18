//
//  ViewController.m
//  01-CalculateDemo
//
//  Created by qingyun on 16/3/21.
//  Copyright © 2016年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNumField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//监听按钮的点击事件
- (IBAction)btResult:(UIButton *)sender {
    int firstNum = [_firstNumField.text intValue];
    int secondNum = [_secondNumField.text intValue];
    
    int result = firstNum + secondNum;
    
    _resultLabel.text = [@(result) stringValue];
#if 0
    //隐藏键盘
    [_firstNumField resignFirstResponder];
    [_secondNumField resignFirstResponder];
#else
    //结束父视图的编辑状态，（把所有的子视图都取消第一响应）
    [self.view endEditing:YES];
#endif
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
