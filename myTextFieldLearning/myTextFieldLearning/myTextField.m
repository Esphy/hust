//
//  myTextField.m
//  myTextFieldLearning
//
//  Created by Esphy on 18/01/2018.
//  Copyright © 2018 Esphy. All rights reserved.
//

#import "myTextField.h"

@implementation myTextField

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        self.layer.borderColor = [UIColor grayColor].CGColor;
        self.layer.borderWidth = 2.0;
        self.layer.cornerRadius = 8.0;
     //   self.layer.shadowColor = [UIColor grayColor].CGColor;
      //  self.layer.shadowOffset = CGSizeMake(2, 2);
        self.delegate = self;
        self.clearButtonMode = UITextFieldViewModeAlways;
    }
    return self;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    self.layer.borderColor = [UIColor blueColor].CGColor;
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSString *text =[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if([text isEqualToString:@""]||text == nil){
        self.layer.borderColor = [UIColor redColor].CGColor;
    }
    else{
        self.layer.borderColor = [UIColor greenColor].CGColor;
    }
}
@end
