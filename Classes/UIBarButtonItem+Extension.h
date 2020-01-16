//
//  UIBarButtonItem+Extension.h
//  ZhenHuiWan
//
//  Created by 周鹏钜 on 15/11/9.
//  Copyright © 2015年 周鹏钜. All rights reserved.
//  设置UIBarButtonItem

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+(UIBarButtonItem *)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action;

+(UIBarButtonItem *)itemWithIcon:(NSString *)icon andHighIcon:(NSString *)highIcon andName:(NSString *)name andTarget:(id)target andAction:(SEL)action;

@end
