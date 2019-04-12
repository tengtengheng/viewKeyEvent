//
//  customView.m
//  viewkeyEvent
//
//  Created by mx1614 on 4/12/19.
//  Copyright © 2019 ludy. All rights reserved.
//

#import "customView.h"



@implementation customView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    NSLog(@"hello");
    // Drawing code here.
}

- (BOOL)performKeyEquivalent:(NSEvent *)event;
{
    NSLog(@"keycode = %hu", event.keyCode);
    switch (event.keyCode) {
        case 126:
            _direction = keydirectionUp;
            break;
        case 125:
            _direction = keydirectionDown;
            break;
        case 124:
            _direction = keydirectionRight;
            break;
        case 123:
            _direction = keydirectionLeft;
            break;
            
        default:
            break;
    }
    
    if ([self.delegate respondsToSelector:@selector(customView:withKeyDirection:)]) {
        [self.delegate customView:self withKeyDirection:_direction];
    }
    return YES;
}

@end
