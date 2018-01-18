//
//  CustomColorsViewController.h
//  Lab_01_AppAboutMe
//
//  Created by Milja Virtanen on 2018-01-17.
//  Copyright © 2018 Milja Virtanen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomColorsViewController : UIViewController

@property (nonatomic, strong) UIColor *bgColor;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *buttonColor;
@property (nonatomic, strong) UIColor *labelColor;

+(UIColor*)bgColor;
+(UIColor*)textColor;
+(UIColor*)buttonColor;
+(UIColor*)textViewColor;
+(UIColor*)labelColor;

@end
