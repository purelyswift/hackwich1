//
//  ViewController.m
//  Palindrome
//
//  Created by Don Bora on 12/28/15.
//  Copyright © 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)checkPalindrome:(id)sender {
    NSString* palindrome = self.textField.text;
    NSUInteger length = palindrome.length;
    
    NSLog(@"length = %lu", (unsigned long)length);
    for (int i = 0; i < length/2; i++) {
        NSLog(@"[palindrome characterAtIndex:%i] = %c", i, [palindrome characterAtIndex:i]);
        if ([palindrome characterAtIndex:i] != [palindrome characterAtIndex:(length - 1 - i)]){
            NSLog(@"Nope!");
            self.label.text = @"Nope!";
            return;
        }
    }
    
    self.label.text = @"Yup!";
}

- (IBAction)makePalindrome:(id)sender {
    NSString* firstPart = self.textField.text;
    NSMutableString* secondPart = [NSMutableString new];
    NSUInteger length = firstPart.length;

    for (int i = 0; i < length; i++) {
        [secondPart appendString:[NSString stringWithFormat:@"%c", [firstPart characterAtIndex:length-1-i]]];
    }

    self.label.text = [NSString stringWithFormat:@"%@%@", firstPart, secondPart];
}

//- (IBAction)checkPalindrome:(id)sender {
//    NSString* palindrome = self.textField.text;
//    
//    for (int i = 0; i < palindrome.length; i++) {
//        // Check for == first
//        if ([palindrome characterAtIndex:i] != [palindrome characterAtIndex:(palindrome.length - 1 - i)]){
//            NSLog(@"Nope!");
//            self.label.text = @"Nope!";
//            return;
//        }
//    }
//    
//    self.label.text = @"Yup!";
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
