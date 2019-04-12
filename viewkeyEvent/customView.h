//
//  customView.h
//  viewkeyEvent
//
//  Created by mx1614 on 4/12/19.
//  Copyright © 2019 ludy. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class customView;
NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, keyArrowDirection) {
    keydirectionUp,
    keydirectionDown,
    keydirectionLeft,
    keydirectionRight
};

@protocol CustomViewDelegate <NSObject>
@optional


/*
 自定义的视图
 
 @param customeView 自定义视图
 @param direction 键盘方向
 */

- (void)customView:(customView *) customView withKeyDirection:(keyArrowDirection)direction;
@end



@interface customView : NSView

@property (nonatomic, assign) keyArrowDirection direction;
@property (nonatomic, weak) id<CustomViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
