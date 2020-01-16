//
//  UIBarButtonItem+Extension.m
//  ZhenHuiWan
//
//  Created by 周鹏钜 on 15/11/9.
//  Copyright © 2015年 周鹏钜. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

/** 设置导航栏按钮 - 系统 */
+(UIBarButtonItem *)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action
{
    UIButton *btn = [[UIButton alloc] init];
    
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    
    [btn setTitle:@"ffffff" forState:UIControlStateNormal];
    
    btn.size = CGSizeMake(100, 30);
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

/** 设置导航栏按钮 - 自定义 */
+(UIBarButtonItem *)itemWithIcon:(NSString *)icon andHighIcon:(NSString *)highIcon andName:(NSString *)name andTarget:(id)target andAction:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    
    if (icon.length)
    {
        [btn setImage:[UIImage imageNamed:icon] forState:UIControlStateNormal];
    }
    
    if (highIcon.length)
    {
        [btn setImage:[UIImage imageNamed:highIcon] forState:UIControlStateHighlighted];
    }
    
    if (name.length)
    {
        [btn setTitle:name forState:UIControlStateNormal];
    }
    
    btn.imageEdgeInsets = UIEdgeInsetsMake(0, -5, 0, 5);
    btn.contentEdgeInsets = UIEdgeInsetsMake(0, 5, 0, -5);
    
    btn.frame = (CGRect){CGPointZero, 50, 21};
    
    /** 调用target的action方法 */
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

@end
