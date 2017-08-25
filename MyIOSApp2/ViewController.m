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
    
    
    BOOL isError=[self checkoutParamR:r Height:height];
    
    if (isError) {
        return;
    }
    
    float s=3.1415*r*r;
    float v=s*height;
    
    
    
    NSString* result=[[NSString alloc] initWithFormat:@"面积:%.3f\n体积:%.3f",s,v ];
    self.textResult.text=result;
}

-(BOOL)checkoutParamR:(float)r Height:(float)h{
    BOOL isError=FALSE;
    NSMutableString* errorStr=[[NSMutableString alloc]initWithString:@"参数错误："];
    if(r<=0)
    {
        isError=TRUE;
        [errorStr appendString:@"半径必须大于0"];
    }
    if(h<=0){
        isError=TRUE;
        [errorStr appendString:@"高度必须大于0"];
    }
    if(isError){
        self.textResult.text=errorStr;
        UIColor* redColor=[[UIColor alloc]initWithRed:1 green:.5 blue:0 alpha:1];
        self.textResult.textColor=redColor;
    }else{
        UIColor* greenColor=[[UIColor alloc]initWithRed:0 green:1 blue:0 alpha:1];
        self.textResult.text=@"";
        self.textResult.textColor=greenColor;
    }
    
    return isError;
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
