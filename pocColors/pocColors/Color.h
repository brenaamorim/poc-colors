//
//  Color.h
//  pocColors
//
//  Created by Brena Amorim on 22/07/21.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, DarkIntensity) {
        darker,
        darkerHigh
};

typedef NS_ENUM(NSInteger, LightIntensity) {
        lighter,
        lighterHigh
};


@interface Color : UIColor

-(instancetype) initWithHex:(NSString *)hex;
-(instancetype) initWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;

@property (strong, nonatomic) NSString *hex;
@property (nonatomic) NSInteger red;
@property (nonatomic) NSInteger green;
@property (nonatomic) NSInteger blue;

+(UIColor *)randomColor;
-(UIColor *)color;
-(UIColor *) darker: (DarkIntensity)intensity;
-(UIColor *) lighter: (LightIntensity)intensity;
+(CAGradientLayer *)gradient: (UIColor *)firstColor secondColor:(UIColor *)secondColor;
@end


