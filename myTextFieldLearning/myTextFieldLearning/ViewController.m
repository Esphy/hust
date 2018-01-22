//
//  ViewController.m
//  myTextFieldLearning
//
//  Created by Esphy on 18/01/2018.
//  Copyright © 2018 Esphy. All rights reserved.
//

#import "ViewController.h"
#import "secondpageViewController.h"
#import "FLAnimatedImage.h"
@interface ViewController (){
    myTextField *textfiled1;
    myTextField *textfiled2;
    myButton *button1;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登录";
    self.view.backgroundColor = [UIColor whiteColor];

    
    textfiled1 = [[myTextField alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    textfiled2 = [[myTextField alloc]initWithFrame:CGRectMake(100, 280, 200, 50)];
    textfiled2.secureTextEntry = YES;
    //[button1 setTitle:@"login" forState:UIControlStateNormal];
    [self.view addSubview:textfiled1];
    [self.view addSubview:textfiled2];
    [self addMyButton];
    [self Swith1];
    [self addimage1];
}

-(void)addimage1{
    UIImageView *imageview1 = [[UIImageView alloc]init];
    imageview1.image = [UIImage imageNamed:@"1.jpg"];
    imageview1.frame = CGRectMake(160, 70, 100, 100);
    [self.view addSubview:imageview1];
}

-(void)addMyButton{
    button1 = [[myButton alloc]initWithFrame:CGRectMake(160, 400, 100, 50)];
    [button1 addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:button1];
}
-(void)buttonAction{
    //判断文本框的内容
    if([textfiled1.text isEqualToString:@"111"]&&[textfiled2.text isEqualToString:@"111"]){
        NSLog(@"账号密码正确！");
        secondpageViewController *secondview = [[secondpageViewController alloc]init];
        [self.navigationController pushViewController:secondview animated:YES];
        
    }
    else{
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"error" message:@"input error" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *OKAction = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
            [textfiled1 resignFirstResponder];
            [textfiled2 resignFirstResponder];
        }];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
            
        }];
        [alert addAction:OKAction];
        [alert addAction:cancelAction];
        [self presentViewController:alert animated:YES completion:nil];
        
        
    }
    [textfiled1 resignFirstResponder];
    [textfiled2 resignFirstResponder];
    textfiled1.layer.borderColor = [UIColor grayColor].CGColor;
    textfiled2.layer.borderColor = [UIColor grayColor].CGColor;
    //textfiled1.text = @"";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -- Swith
-(void)Swith1{
    UISwitch *mySwith = [[UISwitch alloc]initWithFrame:CGRectMake(100, 500, 50, 25)];
    [mySwith addTarget:self action:@selector(SwithAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwith];
}

-(void)SwithAction:(UISwitch*)message{
    NSLog(@"开关是个什么情况：%d",[message isOn]);
}


@end
