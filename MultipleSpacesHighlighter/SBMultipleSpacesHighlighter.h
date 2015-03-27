//
//  SBMultipleSpacesHighlighter.h
//  MultipleSpaceHighlighter
//
//  Created by Simon Braun on 27.03.15.
//  Copyright (c) 2015 Simon Braun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

@interface SBMultipleSpacesHighlighter : NSObject

-(NSTextView *)hightlightMultipleSpacesIn:(NSTextView *)textView;

@end