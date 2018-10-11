//
//  UIImage+Processing.swift
//  CXJ
//
//  Created by Joey on 2018/6/10.
//  Copyright © 2018年 ChuangXiangJia. All rights reserved.
//

import Foundation

// MARK: - UIImage
extension UIImage {
    
    func averageColor() -> UIColor! {
        return self.qmui_averageColor()
    }
    func grayImage() -> UIImage! {
        return self.qmui_gray()
    }
    func image(withAlpha: CGFloat) -> UIImage! {
        return self.qmui_image(withAlpha: withAlpha)
    }
    
    /**
     *  保持当前图片的形状不变，使用指定的颜色去重新渲染它，生成一张新图片并返回
     *
     *  @param tintColor 要用于渲染的新颜色
     *
     *  @return 与当前图片形状一致但颜色与参数tintColor相同的新图片
     */
    func image(withTintColor: UIColor) -> UIImage! {
        return self.qmui_image(withTintColor:withTintColor)
    }
    
    /**
     *  以 CIColorBlendMode 的模式为当前图片叠加一个颜色，生成一张新图片并返回，在叠加过程中会保留图片内的纹理。
     *
     *  @param blendColor 要叠加的颜色
     *
     *  @return 基于当前图片纹理保持不变的情况下颜色变为指定的叠加颜色的新图片
     *
     *  @warning 这个方法可能比较慢，会卡住主线程，建议异步使用
     */
    func image(withBlendColor: UIColor) -> UIImage! {
        return self.qmui_image(withBlendColor:withBlendColor)
    }
    
    /**
     *  在当前图片的上下左右增加一些空白（不支持负值），通常用于调节NSAttributedString里的图片与文字的间距
     *  @param extension 要拓展的大小
     *  @return 拓展后的图片
     */
    func image(withSpacingExtensionInsets: UIEdgeInsets) -> UIImage! {
        return self.qmui_image(withSpacingExtensionInsets:withSpacingExtensionInsets)
    }
    
    func image(withClippedCornerRadius: CGFloat) -> UIImage! {
        return self.qmui_image(withClippedCornerRadius: withClippedCornerRadius)
    }
    
    /**
     *  将原图以 UIViewContentModeScaleAspectFit 的策略缩放，使其缩放后的大小不超过指定的大小，并返回缩放后的图片，缩放后的图片的倍数保持与原图一致。
     *  @param size 在这个约束的 size 内进行缩放后的大小，处理后返回的图片的 size 会根据 contentMode 不同而不同，但必定不会超过 size。
     *
     *  @return 处理完的图片
     *  @see qmui_imageResizedInLimitedSize:contentMode:scale:
     */
    func imageResized(inLimitedSize: CGSize) -> UIImage! {
        return self.qmui_imageResized(inLimitedSize: inLimitedSize)
    }
    
    func image(withOrientation: UIImageOrientation) -> UIImage! {
        return self.qmui_image(with: withOrientation)
    }
    
    /**
     *  返回一个被mask的图片
     *
     *  @param maskImage             mask图片
     *  @param usingMaskImageMode    是否使用“mask image”的方式，若为 YES，则黑色部分显示，白色部分消失，透明部分显示，其他颜色会按照颜色的灰色度对图片做透明处理。若为 NO，则 maskImage 要求必须为灰度颜色空间的图片（黑白图），白色部分显示，黑色部分消失，透明部分消失，其他灰色度对图片做透明处理。
     *
     *  @return 被mask的图片
     */
    func image(withMaskImage: UIImage, usingMaskImageMode: Bool) -> UIImage! {
        return self.qmui_image(withMaskImage: withMaskImage, usingMaskImageMode: usingMaskImageMode)
    }
    
    /**
     *  创建一个size为(4, 4)的纯色的UIImage
     *
     *  @param color 图片的颜色
     *
     *  @return 纯色的UIImage
     */
    static func image(withColor: UIColor) -> UIImage! {
        return self.image(withColor: withColor)
    }
    
    /**
     *  创建一个纯色的UIImage
     *
     *  @param  color           图片的颜色
     *  @param  size            图片的大小
     *  @param  cornerRadius    图片的圆角
     *
     * @return 纯色的UIImage
     */
    static func image(withColor: UIColor, size: CGSize, cornerRadius: CGFloat) -> UIImage! {
        return self.qmui_image(with: withColor, size: size, cornerRadius: cornerRadius)
    }
    
    /**
     *  创建一个纯色的UIImage，支持为四个角设置不同的圆角
     *  @param  color               图片的颜色
     *  @param  size                图片的大小
     *  @param  cornerRadius   四个角的圆角值的数组，长度必须为4，顺序分别为[左上角、左下角、右下角、右上角]
     */
    static func image(withColor: UIColor, size: CGSize, cornerRadiusArray: [NSNumber]) -> UIImage! {
        return self.qmui_image(with: withColor, size: size, cornerRadiusArray: cornerRadiusArray)
    }
    
    /**
     *  创建一个带边框路径，没有背景色的路径图片，border的路径为path
     *
     *  @param strokeColor  border的颜色
     *  @param path         border的路径
     *  @param addClip      是否要调path的addClip
     *
     *  @return 带border的UIImage
     */
    static func image(withStrokeColor: UIColor, size: CGSize, path: UIBezierPath, addClip: Bool) -> UIImage! {
        return self.qmui_image(withStroke: withStrokeColor, size: size, path: path, addClip: addClip)
    }
    
    /**
     *  创建一个带边框路径，没有背景色的路径图片，border的路径为strokeColor、cornerRadius和lineWidth所创建的path
     *
     *  @param strokeColor  border的颜色
     *  @param lineWidth    border的宽度
     *  @param cornerRadius border的圆角
     *
     *  @return 带border的UIImage
     */
    static func image(withStrokeColor: UIColor, size: CGSize, lineWidth: CGFloat, cornerRadius: CGFloat) -> UIImage! {
        return self.qmui_image(withStroke: withStrokeColor, size: size, lineWidth: lineWidth, cornerRadius: cornerRadius)
    }
    
    /**
     *  创建一个带边框路径，没有背景色的路径图片（可以是任意一条边，也可以是多条组合；只能创建矩形的border，不能添加圆角）
     *
     *  @param strokeColor        路径的颜色
     *  @param size               图片的大小
     *  @param lineWidth          路径的大小
     *  @param borderPosition     图片的路径位置，上左下右
     *
     *  @return 带路径，没有背景色的UIImage
     */
    static func image(withStrokeColor: UIColor, size: CGSize, lineWidth: CGFloat, borderPosition: QMUIImageBorderPosition) -> UIImage! {
        return self.qmui_image(withStroke: withStrokeColor, size: size, lineWidth: lineWidth, borderPosition: borderPosition)
    }
    
    /**
     *  创建一个指定大小和颜色的形状图片
     *  @param shape 图片形状
     *  @param size 图片大小
     *  @param tintColor 图片颜色
     */
    static func image(withShape: QMUIImageShape, size: CGSize, tintColor: UIColor) -> UIImage! {
        return self.qmui_image(with: withShape, size: size, tintColor: tintColor)
    }
    
    /**
     *  创建一个指定大小和颜色的形状图片
     *  @param shape 图片形状
     *  @param size 图片大小
     *  @param lineWidth 路径大小，不会影响最终size
     *  @param tintColor 图片颜色
     */
    static func image(withShape: QMUIImageShape, size: CGSize, lineWidth: CGFloat, tintColor: UIColor) -> UIImage! {
        return self.qmui_image(with: withShape, size: size, lineWidth: lineWidth, tintColor: tintColor)
    }
    
    /**
     *  将文字渲染成图片，最终图片和文字一样大
     */
    static func image(withAttributedString: NSAttributedString) -> UIImage! {
        return self.qmui_image(with: withAttributedString)
    }

    /**
     对传进来的 `UIView` 截图，生成一个 `UIImage` 并返回。注意这里使用的是 view.layer 来渲染图片内容。
     
     @param view 要截图的 `UIView`
     
     @return `UIView` 的截图
     
     @warning UIView 的 transform 并不会在截图里生效
     */
    static func image(withView: UIView) -> UIImage! {
        return self.qmui_image(with: withView)
    }
    
    /**
     对传进来的 `UIView` 截图，生成一个 `UIImage` 并返回。注意这里使用的是 iOS 7的系统截图接口。
     
     @param view         要截图的 `UIView`
     @param afterUpdates 是否要在界面更新完成后才截图
     
     @return `UIView` 的截图
     
     @warning UIView 的 transform 并不会在截图里生效
     */
    static func image(withView: UIView, afterScreenUpdates: Bool) -> UIImage! {
        return self.qmui_image(with: withView, afterScreenUpdates: afterScreenUpdates)
    }
    
    
    
    
}









