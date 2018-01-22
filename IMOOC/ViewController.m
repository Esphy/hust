//
//  ViewController.m
//  IMOOC
//
//  Created by Esphy on 15/01/2018.
//  Copyright © 2018 Esphy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *SbView;
@property (weak, nonatomic) IBOutlet UIView *SbView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.SbView.alpha = 0.4;
    self.SbView.hidden = false;
    self.view.backgroundColor = [UIColor whiteColor];
    self.SbView.layer.borderColor = [UIColor blackColor].CGColor;
    self.SbView.layer.borderWidth = 20;
    self.SbView.layer.cornerRadius = 20;
    self.SbView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.SbView2.layer.shadowOffset = CGSizeMake(10, 10);
    self.SbView2.layer.shadowOpacity = 0.5;
    self.SbView2.layer.cornerRadius = 10;
    UIFont *thFont = [UIFont fontWithName:@"Aril-BoldMT" size:15.0];
    NSString *CONMMT = @"这是要显示哇哈哈！";
    
    CGSize labelWh = [CONMMT sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:thFont,NSFontAttributeName,nil]];
    //添加Label控件
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(20, 600, labelWh.width, labelWh.height)];
    label1.backgroundColor = [UIColor whiteColor];
    label1.text = CONMMT;
    label1.textColor = [UIColor blueColor];
    //label1.font = [UIFont systemFontOfSize:12.0];
    label1.font = thFont;
    //label1.adjustsFontSizeToFitWidth = true;
    //num
    //label1.numberOfLines = 0;
    //label1.textAlignment = NSTextAlignmentRight;
   // label1.layer.borderColor = [UIColor blackColor].CGColor;
    //label1.layer.borderWidth = 5;
    label1.layer.shadowColor = [UIColor blackColor].CGColor;
    label1.layer.shadowOffset = CGSizeMake(10,10);
    label1.layer.shadowOpacity = 0.5;
    
   // label1.shadowColor = [UIColor greenColor];
    //label1.shadowOffset = CGSizeMake(10, 10);
    [self.view addSubview:label1];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100,50)];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    //view2
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(110, 110, 100,50)];
    view2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view2];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(100, 200, 100,50)];
    view3.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view3];
    view1.tag =1;
    view2.tag = 2;
    view3.tag = 3;
    NSArray *SubViewArray = self.view.subviews;
    for(UIView *view in SubViewArray){
        if(view.tag == 1){
            view.backgroundColor = [UIColor grayColor];
        }
        if(view.tag == 2){
            view.frame = CGRectMake(300, 110, 200, 100);
            view.backgroundColor = [UIColor blackColor];
        }
        if(view.tag==3){
            [view removeFromSuperview];
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
