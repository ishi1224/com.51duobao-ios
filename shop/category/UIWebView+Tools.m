//
//  UIWebView+Tools.m
//  shop
//
//  Created by zhangwenqiang on 16/8/23.
//  Copyright © 2016年 ishi. All rights reserved.
//

#import "UIWebView+Tools.h"

@implementation UIWebView (Tools)

- (void)clearBackColorForWebView{
    
    self.backgroundColor = [UIColor clearColor];
    
    self.opaque = NO;
    
    for (UIView *aView in [self subviews]) {
        
        if ([aView isKindOfClass:[UIScrollView class]]) {
            
            //[(UIScrollView *)aView setShowsVerticalScrollIndicator:NO];
            
            for (UIView *shadowView in aView.subviews) {
                
                if ([shadowView isKindOfClass:[UIImageView class]]) {
                    
                    shadowView.hidden = YES;//上下滚动出边界时的黑色的图片 也就是拖拽后的上下阴影
                }
            }
        }
    }
}

- (void)didNotLeftOrRightScrollForWebView{
    
    [(UIScrollView *)[[self subviews] objectAtIndex:0] setBounces:NO];
}

- (NSString*) titleString{
    
    return [self stringByEvaluatingJavaScriptFromString:@"document.title"];
}

@end
