//
//  ViewController.h
//  MultipleSpacesHighlighter
//
//  Created by Simon Braun on 27.03.15.
//  Copyright (c) 2015 Simon Braun. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "SBMultipleSpacesHighlighter.h"

@interface ViewController : NSViewController <NSTextViewDelegate> {

    SBMultipleSpacesHighlighter *multipleSpaceHighlighter;
}

@property (unsafe_unretained) IBOutlet NSTextView *textView;
@end
