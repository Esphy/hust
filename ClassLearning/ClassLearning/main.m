//
//  main.m
//  ClassLearning
//
//  Created by Esphy on 17/01/2018.
//  Copyright © 2018 Esphy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BClass *b1 = [[BClass alloc]init];
        [b1 testNotification];
    }
    return 0;
}
