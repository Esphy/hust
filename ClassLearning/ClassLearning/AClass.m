//
//  AClass.m
//  ClassLearning
//
//  Created by Esphy on 17/01/2018.
//  Copyright © 2018 Esphy. All rights reserved.
//

#import "AClass.h"

@implementation AClass
-(id)init{
    self = [super init];
    if(self){
        //[[NSNotificationCenter defaultCenter]postNotificationName:@"THISISTEST" object:nil];
        NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
        [dic setValue:@"haha" forKey:@"key1"];
        [[NSNotificationCenter defaultCenter]postNotificationName:@"THISISTEST" object:[NSNumber numberWithInt:5] userInfo:dic];
        
    }
    return self;
}
@end
