//
//  ViewController.m
//  viewkeyEvent
//
//  Created by mx1614 on 4/12/19.
//  Copyright © 2019 ludy. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
{
    customView *cuView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    cuView = (customView *)self.view;
    cuView.delegate = self;
    //customView.delega

    // Do any additional setup after loading the view.
}

- (void)customView:(customView *) customView withKeyDirection:(keyArrowDirection)direction
{
    switch (direction) {
        case keydirectionUp:
            self.left.constant -= 10;
            break;
        case keydirectionDown:
            self.left.constant += 10;
            break;
        case keydirectionLeft:
            self.top.constant -= 10;
            break;
        case keydirectionRight:
            self.top.constant += 10;
            break;
            
        default:
            break;
    }
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
