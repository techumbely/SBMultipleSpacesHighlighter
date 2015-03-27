//
//  SBMultipleSpaceHighlighter.m
//  DoubleSpaceHighlighter
//
//  Created by Simon Braun on 27.03.15.
//  Copyright (c) 2015 Simon Braun. All rights reserved.
//

#import "SBMultipleSpaceHighlighter.h"

@implementation SBMultipleSpaceHighlighter

-(NSTextView *)hightlightMultipleSpacesIn:(NSTextView *)textView
{
    // Minimum Requirements: 10.7
    
    // Select your favorite Indicator-Color
    NSColor *multipleSpaceIndicatorColor = [NSColor colorWithCalibratedRed:1.0 green:0.0 blue:0.0 alpha:0.3];
    
    // Get String for RegEx-Match
    NSString *textViewString = textView.string;
    
    // Removing previous Attributes from textView.textStorage
    NSRange originalRange = NSMakeRange(0, [textView textStorage].length);
    [[textView textStorage] addAttribute:NSBackgroundColorAttributeName value:[NSColor clearColor] range:originalRange];
    
    // Filtering with RegEx for more than 2 continuos white spaces
    NSError *error = NULL;
    NSRegularExpression *multipleSpaces = [NSRegularExpression
                                           regularExpressionWithPattern:@" {2,}"
                                           options:NSRegularExpressionCaseInsensitive
                                           error:&error];
    NSArray *matches = [multipleSpaces matchesInString:textViewString options:0 range:NSMakeRange(0, textViewString.length)];
    
    
    // Looping through the results and adding BackgroundcolorAttributeName
    for (NSTextCheckingResult *match in matches) {
        [[textView textStorage] addAttribute:NSBackgroundColorAttributeName value:multipleSpaceIndicatorColor range:match.range];
    }
    
    return textView;
}

@end
