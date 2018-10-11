//
//  UIImage+Brightness.h
//  Meijia
//
//  Created by Joey on 2018/9/12.
//  Copyright © 2018年 Meijia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Brightness)

/// 返回一张亮度调节后的 image
///
/// - Parameter brightnessFactor: 亮度数值
- (UIImage *)sp_imageWithBrightness:(CGFloat)brightnessFactor;

@end
