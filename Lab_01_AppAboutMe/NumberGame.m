//
//  NumberGame.m
//  Lab_01_AppAboutMe
//
//  Created by Milja Virtanen on 2018-01-15.
//  Copyright © 2018 Milja Virtanen. All rights reserved.
//

#import "NumberGame.h"

@interface NumberGame ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *sliderValue;

@end

@implementation NumberGame

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self resetSlider];
    
}

//Reset slider value to 50
- (void) resetSlider {
    self.sliderValue.value = 50;
}

//Get slider value, show in label
- (IBAction)sliderChanged:(id)sender {
    //Round slider value
    int value = roundl(self.sliderValue.value);

    self.sliderLabel.text = [NSString stringWithFormat:@"%d", value];
}

//User guess
- (IBAction)guessButton:(id)sender {
    //Link to method for guess
    [self guessNumber];
}

- (void)guessNumber {
    int computerNumber = arc4random_uniform(101);
    
    //For testing the game
    NSLog(@"Computer guess %d", computerNumber);
    
    if (computerNumber < self.sliderValue.value) {
        //Too high
        NSLog(@"Too high!");
        
        //Set textview
        self.textView.text =
        [NSString stringWithFormat:@"Oh no, that's too high. Why not guess again?"];
        
    } else if (computerNumber > self.sliderValue.value) {
        //Too low
        NSLog(@"Too low!");
        
        self.textView.text =
        [NSString stringWithFormat:@"That's a bit too low. Try again!"];
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
