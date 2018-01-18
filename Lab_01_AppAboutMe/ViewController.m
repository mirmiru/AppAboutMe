//
//  ViewController.m
//  Lab_01_AppAboutMe
//
//  Created by Milja Virtanen on 2018-01-12.
//  Copyright © 2018 Milja Virtanen. All rights reserved.
//

#import "ViewController.h"
#import "CustomColorsViewController.h"



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *navigation;
@property (weak, nonatomic) IBOutlet UILabel *game;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *about;
@property (weak, nonatomic) IBOutlet UIButton *interests;
@property (weak, nonatomic) IBOutlet UIButton *whyITHS;
@property (weak, nonatomic) IBOutlet UIButton *numberGame;
@property (weak, nonatomic) IBOutlet UIButton *colors;

@end

@implementation ViewController {
    BOOL firstLoad;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"FIRST LOAD");
    firstLoad = YES;
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    if (!firstLoad)
        [self loadCustomColors];
    firstLoad = NO;
    NSLog(@"SECOND LOAD");
}

-(void)loadCustomColors {
    self.view.backgroundColor = [CustomColorsViewController bgColor];
    self.navigation.textColor = [CustomColorsViewController labelColor];
    self.game.textColor = [CustomColorsViewController labelColor];
    self.imageView.backgroundColor = [CustomColorsViewController bgColor];
    self.about.tintColor = [CustomColorsViewController buttonColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
