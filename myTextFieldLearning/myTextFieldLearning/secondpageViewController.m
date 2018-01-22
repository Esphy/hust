//
//  secondpageViewController.m
//  myTextFieldLearning
//
//  Created by Esphy on 19/01/2018.
//  Copyright © 2018 Esphy. All rights reserved.
//

#import "secondpageViewController.h"

@interface secondpageViewController ()
//@property(nonatomic,strong)UIImageView *imageview1;
@end

@implementation secondpageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"second";
    UIImageView *myImaView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1.jpg"]];
    myImaView.frame = CGRectMake(100, 200, 100, 100);
    NSString *path  = [[NSBundle mainBundle]pathForResource:@"2" ofType:@"gif"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    FLAnimatedImage *imageGif = [FLAnimatedImage animatedImageWithGIFData:data];
    FLAnimatedImageView *gifImageView = [[FLAnimatedImageView alloc]init];
    gifImageView.animatedImage = imageGif;
    gifImageView.frame = CGRectMake(100, 400, 150, 100);
    [self.view addSubview:gifImageView];
//    FLAnimatedImage *imageGif2 = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cdn.duitang.com/uploads/item/201608/03/20160803215327_sAwVa.gif"]]];
//    FLAnimatedImageView *gifImageView2 = [[FLAnimatedImageView alloc]init];
//    gifImageView2.animatedImage = imageGif2;
//    gifImageView2.frame = CGRectMake(100, 500, 200, 200);
//    [self.view addSubview:gifImageView2];
    //[self.view addSubview:myImaView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
