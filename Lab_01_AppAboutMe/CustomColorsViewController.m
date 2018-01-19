//
//  CustomColorsViewController.m
//  Lab_01_AppAboutMe
//
//  Created by Milja Virtanen on 2018-01-17.
//  Copyright © 2018 Milja Virtanen. All rights reserved.
//

#import "CustomColorsViewController.h"

//Static color values accessable from other classes
UIColor *bgColor;
UIColor *textColor;
UIColor *buttonColor;
UIColor *textViewColor;
UIColor *labelColor;

@interface CustomColorsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation CustomColorsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIColor *check = [CustomColorsViewController bgColor];
    if (check) {
        [self loadCustomColors];
    }
}

+ (UIColor*)bgColor {
    return bgColor;
}

+ (UIColor*)textColor {
    return textColor;
}

+ (UIColor*)buttonColor {
    return buttonColor;
}

+ (UIColor*)textViewColor {
    return textViewColor;
}

+ (UIColor*)labelColor {
    return labelColor;
}

-(void)loadCustomColors {
    self.view.backgroundColor = [CustomColorsViewController bgColor];
    self.label.textColor = [CustomColorsViewController labelColor];
    self.textView.textColor = [CustomColorsViewController textColor];
    self.button1.tintColor = [CustomColorsViewController buttonColor];
    self.button2.tintColor = [CustomColorsViewController buttonColor];
    self.textView.backgroundColor = [CustomColorsViewController bgColor];
}

- (IBAction)monochromeColorsButton:(id)sender {
    [self setMonochromeColor];
    
    self.view.backgroundColor = bgColor;
    self.button1.tintColor = buttonColor;
    self.button2.tintColor = buttonColor;
    self.textView.backgroundColor = bgColor;
    self.label.textColor = labelColor;
}

- (IBAction)colorfulColorsButton:(id)sender {
    [self setColorfulColors];
    
    self.view.backgroundColor = bgColor;
    self.button1.tintColor = buttonColor;
    self.button2.tintColor = buttonColor;
    self.textView.backgroundColor = bgColor;
    self.label.textColor = labelColor;
}

//Sets variable values to colorful scheme
-(void)setColorfulColors {
    bgColor = [UIColor colorWithRed:0.96 green:0.83 blue:0.83 alpha:1.0];
    textColor = [UIColor blackColor];
    buttonColor = [UIColor lightGrayColor];
    textViewColor = bgColor;
    labelColor = [UIColor colorWithRed:0.76 green:0.29 blue:0.30 alpha:1.0];
}

//Sets variable values to monochrome scheme
-(void)setMonochromeColor {
    bgColor = [UIColor lightGrayColor];
    textColor = [UIColor darkGrayColor];
    buttonColor = [UIColor whiteColor];
    textViewColor = bgColor;
    labelColor = [UIColor blackColor];
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
