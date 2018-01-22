//
//  myButton.m
//  myTextFieldLearning
//
//  Created by Esphy on 18/01/2018.
//  Copyright © 2018 Esphy. All rights reserved.
//

#import "myButton.h"

@implementation myButton

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.layer.borderColor = [UIColor greenColor].CGColor;
        self.layer.borderWidth = 3.0;
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowOffset = CGSizeMake(5.0, 5.0);
        self.layer.cornerRadius = 10;
        [self setTitle:@"login" forState:UIControlStateNormal];
        [self setTitle:@"haved" forState:UIControlStateHighlighted];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return self;
}

@end
