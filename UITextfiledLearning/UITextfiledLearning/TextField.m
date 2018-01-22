//
//  TextField.m
//  UITextfiledLearning
//
//  Created by Esphy on 18/01/2018.
//  Copyright © 2018 Esphy. All rights reserved.
//

#import "TextField.h"

@implementation TextField

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.layer.borderColor = [UIColor grayColor].CGColor;
        self.layer.borderWidth = 3.0;
        self.layer.cornerRadius = 3.0;
    }
    return self;
}

@end
