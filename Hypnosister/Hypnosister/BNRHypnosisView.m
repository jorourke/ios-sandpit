//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by James ORourke on 19/11/2014.
//  Copyright (c) 2014 FitBugg. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView


- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
                                
    }
    return self;
}

- (void) setCircleColor:(UIColor *)circleColor {
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    NSLog(@"%@ was touched", self);
    
    float red = (arc4random() %100) / 100.0;
    float green = (arc4random() %100) / 100.0;
    float blue = (arc4random() %100) / 100.0;
    
    UIColor *randomColour = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    self.circleColor = randomColour;

}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGRect bounds = self.bounds;
    
    UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
    
    CGPoint centre;
    centre.x = bounds.origin.x + bounds.size.width / 2.0;
    centre.y = bounds.origin.y + bounds.size.height /2.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    for (float radius = maxRadius; radius > 0; radius -= 20) {
        [path moveToPoint:CGPointMake(centre.x + radius, centre.y)];
        [path addArcWithCenter:centre radius:radius startAngle:0.0
                      endAngle: M_PI * 2.0 clockwise:YES];
    }
    
    path.lineWidth = 10.0;
    
    [self.circleColor setStroke];

    [path stroke];
    
    [logoImage drawInRect:CGRectInset(self.bounds, 75, 100)];
    
    
}


@end
