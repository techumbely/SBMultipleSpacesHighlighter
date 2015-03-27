//
//  SBMultipleSpaceHighlighter.h
//  DoubleSpaceHighlighter
//
//  Created by Simon Braun on 27.03.15.
//  Copyright (c) 2015 Simon Braun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface SBMultipleSpaceHighlighter : NSObject

-(NSTextView *)hightlightMultipleSpacesIn:(NSTextView *)textView;

@end