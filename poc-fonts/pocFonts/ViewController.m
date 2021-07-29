//
//  ViewController.m
//  pocFonts
//
//  Created by Brena Amorim on 28/07/21.
//

#import "ViewController.h"
#import "Font.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(10, 100, 200, 40);
    label.textColor = [UIColor blackColor];

    Font *testFont = [[Font alloc] initWithFont:[UIFont systemFontOfSize:10]];
//    label.font = [Font ]
    label.font = [testFont headline];
    
    label.text = @"Ola mundo";
    
    [self.view addSubview:label];
    // Do any additional setup after loading the view.
}


@end
