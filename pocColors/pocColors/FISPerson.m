//
//  FISClass.m
//  pocColors
//
//  Created by Brena Amorim on 23/07/21.
//
//

//FISPerson.m
#import "FISPerson.h"
@implementation FISPerson
- (instancetype)init {
    self = [self initWithName:@""];
    return self;
}
- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
@end
