//
//  Font.h
//  pocFonts
//
//  Created by Brena Amorim on 28/07/21.
//

#import <UIKit/UIKit.h>


@interface Font : UIFont

-(instancetype) initWithFont: (UIFont *)font;

@property (nonatomic) UIFont* font;

-(UIFont *) large;
-(UIFont *) title1;
-(UIFont *) title2;
-(UIFont *) title3;
-(UIFont *) headline;
-(UIFont *) body;
-(UIFont *) callout;
-(UIFont *) footnote;
-(UIFont *) caption1;
-(UIFont *) caption2;

@end
