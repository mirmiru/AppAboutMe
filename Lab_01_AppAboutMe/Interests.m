//
//  Interests.m
//  Lab_01_AppAboutMe
//
//  Created by Milja Virtanen on 2018-01-18.
//  Copyright © 2018 Milja Virtanen. All rights reserved.
//

#import "Interests.h"
#import "CustomColorsViewController.h"

@interface Interests ()
@property (weak, nonatomic) IBOutlet UILabel *languages;
@property (weak, nonatomic) IBOutlet UILabel *cooking;
@property (weak, nonatomic) IBOutlet UILabel *meditation;
@property (weak, nonatomic) IBOutlet UIImageView *hindiImage;
@property (weak, nonatomic) IBOutlet UIImageView *cookingImage;
@property (weak, nonatomic) IBOutlet UIImageView *meditationImage;

@end

@implementation Interests

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
    self.languages.textColor = [CustomColorsViewController labelColor];
    self.cooking.textColor = [CustomColorsViewController labelColor];
    self.meditation.textColor = [CustomColorsViewController labelColor];
    self.hindiImage.backgroundColor = [CustomColorsViewController bgColor];
    self.cookingImage.backgroundColor = [CustomColorsViewController bgColor];
    self.meditationImage.backgroundColor = [CustomColorsViewController bgColor];
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
