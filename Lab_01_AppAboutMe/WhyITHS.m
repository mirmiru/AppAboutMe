//
//  WhyITHS.m
//  Lab_01_AppAboutMe
//
//  Created by Milja Virtanen on 2018-01-18.
//  Copyright © 2018 Milja Virtanen. All rights reserved.
//

#import "WhyITHS.h"
#import "CustomColorsViewController.h"

@interface WhyITHS ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UITextView *textView1;
@property (weak, nonatomic) IBOutlet UITextView *textView2;

@end

@implementation WhyITHS

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIColor *check = [CustomColorsViewController bgColor];
    if (check) {
        [self loadCustomColors];
    }
}

-(void)loadCustomColors {
    self.view.backgroundColor = [CustomColorsViewController bgColor];
    self.label1.textColor = [CustomColorsViewController labelColor];
    self.label2.textColor = [CustomColorsViewController labelColor];
    self.textView1.textColor = [CustomColorsViewController textColor];
    self.textView1.backgroundColor = [CustomColorsViewController bgColor];
    self.textView2.textColor = [CustomColorsViewController textColor];
    self.textView2.backgroundColor = [CustomColorsViewController bgColor];
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
