//
//  About.m
//  Lab_01_AppAboutMe
//
//  Created by Milja Virtanen on 2018-01-18.
//  Copyright © 2018 Milja Virtanen. All rights reserved.
//

#import "About.h"
#import "CustomColorsViewController.h"

@interface About ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation About

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
    self.label.textColor = [CustomColorsViewController labelColor];
    self.textView.textColor = [CustomColorsViewController textColor];
    self.textView.backgroundColor = [CustomColorsViewController bgColor];
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
