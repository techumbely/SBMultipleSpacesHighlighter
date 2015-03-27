//
//  ViewController.m
//  MultipleSpacesHighlighter
//
//  Created by Simon Braun on 27.03.15.
//  Copyright (c) 2015 Simon Braun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [self highlightMultipleSpaces];
}

-(void)textViewDidChangeSelection:(NSNotification *)notification {
    
    [self highlightMultipleSpaces];
}

-(void)highlightMultipleSpaces {
    
    multipleSpaceHighlighter = [[SBMultipleSpaceHighlighter alloc] init];
    
    _textView = [multipleSpaceHighlighter hightlightMultipleSpacesIn:_textView];
}

@end
