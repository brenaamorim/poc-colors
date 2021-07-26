//
//  ViewController.m
//  pocColors
//
//  Created by Brena Amorim on 22/07/21.
//

#import "ViewController.h"
#import "Color.h"
#import "FISPerson.h"


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
//    FISPerson *zachDrossman = [[FISPerson alloc]initWithName:@"Zach Drossman"];
    NSLog(@"testButton background color %@", self.testButton.backgroundColor);
}



- (void)changeColor {
    // Color hex converting
//    Color *color = [[Color alloc] initWithHex:@"#FF5B5B"];
    Color *test = [[Color alloc] initWithRGB:191 green:68 blue:68];

    
    [self.testButton setBackgroundColor:[test color]];
    
    NSLog(@"testButton background color %@", self.testButton.backgroundColor);
}

@end
