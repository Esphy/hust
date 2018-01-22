//
//  BClass.m
//  ClassLearning
//
//  Created by Esphy on 17/01/2018.
//  Copyright © 2018 Esphy. All rights reserved.
//

#import "BClass.h"

@implementation BClass
-(void)testNotification{
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(testAction:) name:@"THISISTEST" object:nil];
    AClass *a = [[AClass alloc]init];
}

-(void)testAction{
    NSLog(@"这是一个广播测试用例");
}

-(void)testAction:(NSNotification*)notif
{
    NSNumber *num1 = notif.object;
    NSDictionary *dic1 = notif.userInfo;
    NSLog(@"%@,%@",num1,dic1);
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"THISISTEST" object:nil];
}
@end
