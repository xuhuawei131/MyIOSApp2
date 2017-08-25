//
//  ViewController.m
//  MyIOSApp2
//
//  Created by lingdian on 17/8/25.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *editCircle;

@property (weak, nonatomic) IBOutlet UITextField *editHeight;
@property (weak, nonatomic) IBOutlet UILabel *textResult;

@end

@implementation ViewController
- (IBAction)onBtnClick:(id)sender {
    //按住alt 双击一个类 可以快速查看
    float r=[self.editCircle.text floatValue];
    float height=[self.editHeight.text floatValue];
    
    
    float s=3.1415*r*r;
    float v=s*height;
    
    NSString* result=[[NSString alloc] initWithFormat:@"面积:%.3f\n体积:%.3f",s,v ];
    self.textResult.text=result;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //系统的生命周期回调 view家在完成 调用这个
    self.textResult.text=@"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
