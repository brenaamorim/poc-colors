//
//  ViewController.m
//  pocColors
//
//  Created by Brena Amorim on 22/07/21.
//

#import "ViewController.h"
#import "Color.h"
#import "Font.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize testButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 200, 200, 40);
    label.textColor = [UIColor blackColor];

    Font *testFont = [[Font alloc] initWithFont:[UIFont systemFontOfSize:10]];
//    label.font = [Font ]
    label.font = [testFont headline];
    
    label.text = @"Ola mundo";
    
    [self.view addSubview:label];


    Color *first = [[Color alloc] initWithHex:@"#0082FF"];
    Color *second = [[Color alloc] initWithHex:@"#BF43BF"];
    self.testView = [[UIView alloc] initWithFrame:CGRectMake(10, 200, 200, 40)];
    self.testView.frame = CGRectMake(10, 200, 200, 40);

//    // Create the gradient
//    CAGradientLayer *theViewGradient = [Color gradient:first.color secondColor:second.color];
//    theViewGradient.frame = self.testView.bounds;
    //Add gradient to view

    self.testView.backgroundColor = [UIColor cyanColor];
//    [self.testView.layer insertSublayer:theViewGradient atIndex:0];

    Color *color = [[Color alloc] initWithHex:@"#FF5B5B"];

    self.testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.testButton.frame = CGRectMake(10, 150, 200, 40);
    
    self.originalButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.originalButton.frame = CGRectMake(10, 100, 200, 40);
    
    CAGradientLayer *theViewGradient = [Color gradient:first.color secondColor:second.color];
    theViewGradient.frame = self.testButton.bounds;
    [self.testButton.layer insertSublayer:theViewGradient atIndex:0];

    
    [self.testButton setBackgroundColor: [color color]];
    [self.testButton addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testButton];
    
    [self.originalButton setBackgroundColor: [color color]];
    [self.originalButton addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_originalButton];
    NSLog(@"[DragonFly] testButton background color %@", self.testButton.backgroundColor);
}



- (void)changeColor {
//    Color hex converting
    Color *color = [[Color alloc] initWithHex:@"#FF5B5B"];
//    Color *test = [[Color alloc] initWithRGB:191 green:68 blue:68];

//    Color *test2 = [[Color alloc] init];

    [self.originalButton setBackgroundColor:[color lighter:lighter]];
    
    NSLog(@"[DragonFly] testButton background color %@", self.testButton.backgroundColor);
}

@end
