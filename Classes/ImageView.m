//
//  ImageView.m
//  Image
//
//  Created by Steve Baker on 3/4/10.
//  Copyright 2010 Beepscore LLC. All rights reserved.
//

#import "ImageView.h"


@implementation ImageView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIImage *image = [UIImage imageNamed:@"photo.png"];
    CGFloat idealSize = 300.0f;
    CGFloat ratio = 1.0f;
    CGFloat heightRatio = idealSize / image.size.height;
    CGFloat widthRatio = idealSize / image.size.width;
    
    if (heightRatio < widthRatio) {
        ratio = heightRatio;
    } else {
        ratio = widthRatio;
    }
    
    CGRect imageRect = CGRectMake(10.0f, 10.0f, image.size.width * ratio, image.size.height * ratio);
    [image drawInRect:imageRect blendMode:kCGBlendModeDifference alpha:1.0f];
}


- (void)dealloc {
    [super dealloc];
}


@end
