//
//  NumberGame.m
//  Lab_01_AppAboutMe
//
//  Created by Milja Virtanen on 2018-01-15.
//  Copyright © 2018 Milja Virtanen. All rights reserved.
//

#import "NumberGame.h"
#import "CustomColorsViewController.h"

@interface NumberGame ()

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *sliderValue;
@property (weak, nonatomic) IBOutlet UIButton *guess;
@property (nonatomic) int computerNumber;

@end

@implementation NumberGame

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIColor *check = [CustomColorsViewController bgColor];
    if (check) {
        [self loadCustomColors];
    }
    self.computerNumber = arc4random_uniform(101);
    [self resetSlider];
}

-(void)loadCustomColors {
    self.view.backgroundColor = [CustomColorsViewController bgColor];
    self.sliderLabel.textColor = [CustomColorsViewController labelColor];
    self.textView.textColor = [CustomColorsViewController textColor];
    self.textView.backgroundColor = [CustomColorsViewController bgColor];
    self.guess.tintColor = [CustomColorsViewController buttonColor];
    self.sliderValue.tintColor = [CustomColorsViewController labelColor];
}

//Reset slider value to 50
- (void) resetSlider {
    self.sliderValue.value = 50;
}

//Get slider value, show in label
- (IBAction)sliderChanged:(id)sender {
    //Round slider value
    int value = (int) (self.sliderValue.value);

    self.sliderLabel.text = [NSString stringWithFormat:@"%d", value];
}

//User guess
- (IBAction)guessButton:(id)sender {
    //Link to method for guess
    [self guessNumber];
}

- (void)guessNumber {
    //int computerNumber = arc4random_uniform(101);
    int userGuess = (int)(self.sliderValue.value);
    
    //For testing the game
    NSLog(@"Computer guess %d", self.computerNumber);
    
   if (self.computerNumber < (int) self.sliderValue.value) {
            //Too high
            NSLog(@"Too high!");
        
            //Set textview
            self.textView.text =
            [NSString stringWithFormat:@"Oh no, that's too high. Why not guess again?"];
            userGuess = (int) self.sliderValue.value;
    } else if (self.computerNumber > self.sliderValue.value) {
            //Too low
            NSLog(@"Too low!");
        
            self.textView.text =
            [NSString stringWithFormat:@"That's a bit too low. Try again!"];
            userGuess = (int) self.sliderValue.value;
    } else {
        //Right!
        NSLog(@"Right!");
        self.textView.text =
        [NSString stringWithFormat:@"Wow, I can't believe you actually guessed it!"];
    }
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
