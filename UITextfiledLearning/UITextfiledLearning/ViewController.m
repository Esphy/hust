//
//  ViewController.m
//  UITextfiledLearning
//
//  Created by Esphy on 18/01/2018.
//  Copyright © 2018 Esphy. All rights reserved.
//

#import "ViewController.h"
#import "TextField.h"
@interface ViewController (){
    TextField *mytextfield1;
    TextField *mytextfield2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    mytextfield1 = [[TextField alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    mytextfield2 = [[TextField alloc]initWithFrame:CGRectMake(100, 180, 200, 50)];
    [self.view addSubview:mytextfield1];
    [self.view addSubview:mytextfield2];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
