//
//  ViewController.m
//  pocColors
//
//  Created by Brena Amorim on 22/07/21.
//

#import "ViewController.h"
#import "Color.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize testButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    Color *color = [[Color alloc] initWithHex:@"#FF5B5B"];

    self.testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.testButton.frame = CGRectMake(10, 150, 200, 40);
    
    self.originalButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.originalButton.frame = CGRectMake(10, 100, 200, 40);
    
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
//    Color *color = [[Color alloc] initWithHex:@"#FF5B5B"];
    Color *test = [[Color alloc] initWithRed: 255 green: 91 blue: 91];
    
    [self.testButton setBackgroundColor:[test darkerHigh]];
    
    NSLog(@"[DragonFly] testButton background color %@", self.testButton.backgroundColor);
}

@end
