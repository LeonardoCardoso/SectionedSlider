//
//  SectionedSlider.swift
//  SectionedSlider
//
//  Created by Leonardo Cardoso on 06.06.17.
//  Copyright © 2017 leocardz.com. All rights reserved.
//

import UIKit

public protocol SectionedSliderDelegate {
    
	func sectionChanged(slider: SectionedSlider, selected: Int)
    
}

public class StyleKit : NSObject {

    //// Drawing Methods

    public static func drawSlider(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 156, height: 400), resizing: ResizingBehavior = .aspectFit, factor: CGFloat = 0.0, sections: CGFloat = 10, palette: Palette = Palette()) {
        
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        let sectionOriginalHeight: CGFloat = 400
        let sectionOriginalWidth: CGFloat = 156
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: sectionOriginalWidth, height: sectionOriginalHeight), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / sectionOriginalWidth, y: resizedFrame.height / sectionOriginalHeight)

        //// Variable Declarations
        let sectionsSafe: CGFloat = sections < 2 ? 2 : (sections > 20 ? 20 : sections)
        let sectionHeight: CGFloat = sectionOriginalHeight / sectionsSafe
        let slideHeight: CGFloat = floor(factor / (1.0 / sectionsSafe) + 1) * sectionHeight

        let y1: CGFloat = sectionHeight * 0 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 0
        let y2: CGFloat = sectionHeight * 1 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 1
        let y3: CGFloat = sectionHeight * 2 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 2
        let y4: CGFloat = sectionHeight * 3 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 3
        let y5: CGFloat = sectionHeight * 4 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 4
        let y6: CGFloat = sectionHeight * 5 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 5
        let y7: CGFloat = sectionHeight * 6 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 6
        let y8: CGFloat = sectionHeight * 7 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 7
        let y9: CGFloat = sectionHeight * 8 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 8
        let y10: CGFloat = sectionHeight * 9 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 9
        let y11: CGFloat = sectionHeight * 10 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 10
        let y12: CGFloat = sectionHeight * 11 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 11
        let y13: CGFloat = sectionHeight * 12 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 12
        let y14: CGFloat = sectionHeight * 13 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 13
        let y15: CGFloat = sectionHeight * 14 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 14
        let y16: CGFloat = sectionHeight * 15 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 15
        let y17: CGFloat = sectionHeight * 16 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 16
        let y18: CGFloat = sectionHeight * 17 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 17
        let y19: CGFloat = sectionHeight * 18 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 18
        let y20: CGFloat = sectionHeight * 19 > sectionOriginalHeight + 0.00000001 - sectionHeight ? 0 : sectionHeight * 19
        
        //// BackgroundView Drawing
        let backgroundViewPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: sectionOriginalWidth, height: sectionOriginalHeight))
        palette.viewBackgroundColor.setFill()
        backgroundViewPath.fill()
        
        
        //// BodyBackgroundView Drawing
        let bodyBackgroundViewPath = UIBezierPath()
        bodyBackgroundViewPath.move(to: CGPoint(x: 76.43, y: 0))
        bodyBackgroundViewPath.addLine(to: CGPoint(x: 79.57, y: 0))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 122.5, y: 3.27), controlPoint1: CGPoint(x: 101.58, y: 0), controlPoint2: CGPoint(x: 112.58, y: 0))
        bodyBackgroundViewPath.addLine(to: CGPoint(x: 124.43, y: 3.75))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 152.25, y: 31.57), controlPoint1: CGPoint(x: 137.36, y: 8.45), controlPoint2: CGPoint(x: 147.55, y: 18.64))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 156, y: 76.43), controlPoint1: CGPoint(x: 156, y: 43.42), controlPoint2: CGPoint(x: 156, y: 54.42))
        bodyBackgroundViewPath.addLine(to: CGPoint(x: 156, y: 323.57))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 152.73, y: 366.5), controlPoint1: CGPoint(x: 156, y: 345.58), controlPoint2: CGPoint(x: 156, y: 356.58))
        bodyBackgroundViewPath.addLine(to: CGPoint(x: 152.25, y: 368.43))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 124.43, y: 396.25), controlPoint1: CGPoint(x: 147.55, y: 381.36), controlPoint2: CGPoint(x: 137.36, y: 391.55))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 79.57, y: 400), controlPoint1: CGPoint(x: 112.58, y: 400), controlPoint2: CGPoint(x: 101.58, y: 400))
        bodyBackgroundViewPath.addLine(to: CGPoint(x: 76.43, y: 400))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 33.5, y: 396.73), controlPoint1: CGPoint(x: 54.42, y: 400), controlPoint2: CGPoint(x: 43.42, y: 400))
        bodyBackgroundViewPath.addLine(to: CGPoint(x: 31.57, y: 396.25))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 3.75, y: 368.43), controlPoint1: CGPoint(x: 18.64, y: 391.55), controlPoint2: CGPoint(x: 8.45, y: 381.36))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 0, y: 323.57), controlPoint1: CGPoint(x: 0, y: 356.58), controlPoint2: CGPoint(x: 0, y: 345.58))
        bodyBackgroundViewPath.addLine(to: CGPoint(x: 0, y: 76.43))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 3.27, y: 33.5), controlPoint1: CGPoint(x: 0, y: 54.42), controlPoint2: CGPoint(x: 0, y: 43.42))
        bodyBackgroundViewPath.addLine(to: CGPoint(x: 3.75, y: 31.57))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 31.57, y: 3.75), controlPoint1: CGPoint(x: 8.45, y: 18.64), controlPoint2: CGPoint(x: 18.64, y: 8.45))
        bodyBackgroundViewPath.addCurve(to: CGPoint(x: 76.43, y: 0), controlPoint1: CGPoint(x: 43.42, y: -0), controlPoint2: CGPoint(x: 54.42, y: 0))
        bodyBackgroundViewPath.close()
        palette.sliderBackgroundColor.setFill()
        bodyBackgroundViewPath.fill()
        
        
        //// Group
        context.saveGState()
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        
        //// SectionedMask Drawing
        context.saveGState()
        context.translateBy(x: 78, y: 200)
        context.rotate(by: -180 * CGFloat.pi/180)
        
        let sectionedMaskPath = UIBezierPath(rect: CGRect(x: -78, y: -200, width: sectionOriginalWidth, height: slideHeight))
        palette.sliderColor.setFill()
        sectionedMaskPath.fill()
        
        context.restoreGState()
        
        
        //// BodyView Drawing
        context.saveGState()
        context.setBlendMode(.sourceIn)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        let bodyViewPath = UIBezierPath()
        bodyViewPath.move(to: CGPoint(x: 76.43, y: 0))
        bodyViewPath.addLine(to: CGPoint(x: 79.57, y: 0))
        bodyViewPath.addCurve(to: CGPoint(x: 122.5, y: 3.27), controlPoint1: CGPoint(x: 101.58, y: 0), controlPoint2: CGPoint(x: 112.58, y: -0))
        bodyViewPath.addLine(to: CGPoint(x: 124.43, y: 3.75))
        bodyViewPath.addCurve(to: CGPoint(x: 152.25, y: 31.57), controlPoint1: CGPoint(x: 137.36, y: 8.45), controlPoint2: CGPoint(x: 147.55, y: 18.64))
        bodyViewPath.addCurve(to: CGPoint(x: 156, y: 76.43), controlPoint1: CGPoint(x: 156, y: 43.42), controlPoint2: CGPoint(x: 156, y: 54.42))
        bodyViewPath.addLine(to: CGPoint(x: 156, y: 323.57))
        bodyViewPath.addCurve(to: CGPoint(x: 152.73, y: 366.5), controlPoint1: CGPoint(x: 156, y: 345.58), controlPoint2: CGPoint(x: 156, y: 356.58))
        bodyViewPath.addLine(to: CGPoint(x: 152.25, y: 368.43))
        bodyViewPath.addCurve(to: CGPoint(x: 124.43, y: 396.25), controlPoint1: CGPoint(x: 147.55, y: 381.36), controlPoint2: CGPoint(x: 137.36, y: 391.55))
        bodyViewPath.addCurve(to: CGPoint(x: 79.57, y: 400), controlPoint1: CGPoint(x: 112.58, y: 400), controlPoint2: CGPoint(x: 101.58, y: 400))
        bodyViewPath.addLine(to: CGPoint(x: 76.43, y: 400))
        bodyViewPath.addCurve(to: CGPoint(x: 33.5, y: 396.73), controlPoint1: CGPoint(x: 54.42, y: 400), controlPoint2: CGPoint(x: 43.42, y: 400))
        bodyViewPath.addLine(to: CGPoint(x: 31.57, y: 396.25))
        bodyViewPath.addCurve(to: CGPoint(x: 3.75, y: 368.43), controlPoint1: CGPoint(x: 18.64, y: 391.55), controlPoint2: CGPoint(x: 8.45, y: 381.36))
        bodyViewPath.addCurve(to: CGPoint(x: 0, y: 323.57), controlPoint1: CGPoint(x: 0, y: 356.58), controlPoint2: CGPoint(x: 0, y: 345.58))
        bodyViewPath.addLine(to: CGPoint(x: 0, y: 76.43))
        bodyViewPath.addCurve(to: CGPoint(x: 3.27, y: 33.5), controlPoint1: CGPoint(x: 0, y: 54.42), controlPoint2: CGPoint(x: 0, y: 43.42))
        bodyViewPath.addLine(to: CGPoint(x: 3.75, y: 31.57))
        bodyViewPath.addCurve(to: CGPoint(x: 31.57, y: 3.75), controlPoint1: CGPoint(x: 8.45, y: 18.64), controlPoint2: CGPoint(x: 18.64, y: 8.45))
        bodyViewPath.addCurve(to: CGPoint(x: 76.43, y: 0), controlPoint1: CGPoint(x: 43.42, y: -0), controlPoint2: CGPoint(x: 54.42, y: 0))
        bodyViewPath.close()
        palette.sliderColor.setFill()
        bodyViewPath.fill()
        
        context.endTransparencyLayer()
        context.restoreGState()
        
        
        //// Rectangle 20 Drawing
        let rectangle20Path = UIBezierPath(rect: CGRect(x: 0, y: y20, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle20Path.lineWidth = 1
        rectangle20Path.stroke()
        
        
        //// Rectangle 19 Drawing
        let rectangle19Path = UIBezierPath(rect: CGRect(x: 0, y: y19, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle19Path.lineWidth = 1
        rectangle19Path.stroke()
        
        
        //// Rectangle 18 Drawing
        let rectangle18Path = UIBezierPath(rect: CGRect(x: 0, y: y18, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle18Path.lineWidth = 1
        rectangle18Path.stroke()
        
        
        //// Rectangle 17 Drawing
        let rectangle17Path = UIBezierPath(rect: CGRect(x: 0, y: y17, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle17Path.lineWidth = 1
        rectangle17Path.stroke()
        
        
        //// Rectangle 16 Drawing
        let rectangle16Path = UIBezierPath(rect: CGRect(x: 0, y: y16, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle16Path.lineWidth = 1
        rectangle16Path.stroke()
        
        
        //// Rectangle 15 Drawing
        let rectangle15Path = UIBezierPath(rect: CGRect(x: 0, y: y15, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle15Path.lineWidth = 1
        rectangle15Path.stroke()
        
        
        //// Rectangle 14 Drawing
        let rectangle14Path = UIBezierPath(rect: CGRect(x: 0, y: y14, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle14Path.lineWidth = 1
        rectangle14Path.stroke()
        
        
        //// Rectangle 13 Drawing
        let rectangle13Path = UIBezierPath(rect: CGRect(x: 0, y: y13, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle13Path.lineWidth = 1
        rectangle13Path.stroke()
        
        
        //// Rectangle 12 Drawing
        let rectangle12Path = UIBezierPath(rect: CGRect(x: 0, y: y12, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle12Path.lineWidth = 1
        rectangle12Path.stroke()
        
        
        //// Rectangle 11 Drawing
        let rectangle11Path = UIBezierPath(rect: CGRect(x: 0, y: y11, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle11Path.lineWidth = 1
        rectangle11Path.stroke()
        
        
        //// Rectangle 10 Drawing
        let rectangle10Path = UIBezierPath(rect: CGRect(x: 0, y: y10, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle10Path.lineWidth = 1
        rectangle10Path.stroke()
        
        
        //// Rectangle 9 Drawing
        let rectangle9Path = UIBezierPath(rect: CGRect(x: 0, y: y9, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle9Path.lineWidth = 1
        rectangle9Path.stroke()
        
        
        //// Rectangle 8 Drawing
        let rectangle8Path = UIBezierPath(rect: CGRect(x: 0, y: y8, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle8Path.lineWidth = 1
        rectangle8Path.stroke()
        
        
        //// Rectangle 7 Drawing
        let rectangle7Path = UIBezierPath(rect: CGRect(x: 0, y: y7, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle7Path.lineWidth = 1
        rectangle7Path.stroke()
        
        
        //// Rectangle 6 Drawing
        let rectangle6Path = UIBezierPath(rect: CGRect(x: 0, y: y6, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle6Path.lineWidth = 1
        rectangle6Path.stroke()
        
        
        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(rect: CGRect(x: 0, y: y5, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle5Path.lineWidth = 1
        rectangle5Path.stroke()
        
        
        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(rect: CGRect(x: 0, y: y4, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle4Path.lineWidth = 1
        rectangle4Path.stroke()
        
        
        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 0, y: y3, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle3Path.lineWidth = 1
        rectangle3Path.stroke()
        
        
        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 0, y: y2, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle2Path.lineWidth = 1
        rectangle2Path.stroke()
        
        
        //// Rectangle 1 Drawing
        let rectangle1Path = UIBezierPath(rect: CGRect(x: 0, y: y1, width: sectionOriginalWidth, height: sectionHeight))
        palette.viewBackgroundColor.setStroke()
        rectangle1Path.lineWidth = 1
        rectangle1Path.stroke()

        context.saveGState()
        context.setBlendMode(.multiply)
        
        context.restoreGState()
    
        context.endTransparencyLayer()
        context.restoreGState()
        
        context.restoreGState()

    }




    @objc(SectionedSliderResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}

class SectionedSliderLayer: CALayer {
    
    // MARK: - Properties
    @NSManaged var factor: CGFloat
    
    // MARK: - Initializers
    override init() {
        
        super.init()
        
        factor = 0
        
    }
    
    override init(layer: Any) {
        
        super.init(layer: layer)
        
        if let layer = layer as? SectionedSliderLayer {
            
            factor = layer.factor
            
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
}

internal class Flow {
    
    // MARK: - Functions
    // Execute code block asynchronously
    static func async(block: @escaping () -> Void) {
        
        DispatchQueue.main.async(execute: block)
        
    }
    
    // Execute code block asynchronously after given delay time
    static func delay(for delay: TimeInterval, block: @escaping () -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delay, execute: block)
        
    }
    
}

open class Palette {
    
    var viewBackgroundColor: UIColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
    var sliderBackgroundColor: UIColor = UIColor(red: 0.185, green: 0.184, blue: 0.184, alpha: 1.000)
    var sliderColor: UIColor = UIColor(red: 0.147, green: 0.000, blue: 0.697, alpha: 1.000)
    
    public init(viewBackgroundColor: UIColor? = nil, sliderBackgroundColor: UIColor? = nil, sliderColor: UIColor? = nil) {
        
        self.viewBackgroundColor = viewBackgroundColor ?? self.viewBackgroundColor
        self.sliderBackgroundColor = sliderBackgroundColor ?? self.sliderBackgroundColor
        self.sliderColor = sliderColor ?? self.sliderColor
        
    }
    
}

@IBDesignable
open class SectionedSlider: UIView {
    
    // MARK: - IBDesignable and IBInspectable
    @IBInspectable var viewBackgroundColor: UIColor? {
        didSet {
            palette.viewBackgroundColor = viewBackgroundColor ?? palette.viewBackgroundColor
        }
    }
    
    @IBInspectable var sliderBackgroundColor: UIColor? {
        didSet {
            palette.sliderBackgroundColor = sliderBackgroundColor ?? palette.sliderBackgroundColor
        }
    }
    
    @IBInspectable var sliderColor: UIColor? {
        didSet {
            palette.sliderColor = sliderColor ?? palette.sliderColor
        }
    }
    
    @IBInspectable open var sections: Int = 10 {
        willSet {
            if newValue < 2 || newValue > 20 {
                debugPrint("sections must be between 2 and 20")
            }
        }
    }

    @IBInspectable open var selectedSection: Int = 0 {
        didSet {
            if selectedSection < 0 || selectedSection > sections {
                debugPrint("sections must be between 0 and \(sections)")
            } else {
                factor = CGFloat(selectedSection) / CGFloat(sections) - 0.0001
            }
        }
    }

    private var factor: CGFloat = 0.0 {
        willSet {
            (layer as? SectionedSliderLayer)?.factor = newValue
			delegate?.sectionChanged(slider: self, selected: abs(Int(ceil(CGFloat(newValue) * CGFloat(sections)))))

            draw()
        }
    }
    
    // MARK: - Properties
    private var keyPath: String = "factor"
    private var palette: Palette = Palette()
    open var delegate: SectionedSliderDelegate? {
        didSet {
            let factor = self.factor
            self.factor = factor
        }
    }
    
    override open class var layerClass: AnyClass {
        
        return SectionedSliderLayer.self
        
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
    }
    
    public init(frame: CGRect, selectedSection: Int, sections: Int, palette: Palette = Palette()) {
        
        super.init(frame: frame)
        
        //Because we use observers, for them to run in the initializers defer is needed.
        // See: https://stackoverflow.com/a/33979852/1904232
        defer {
            self.backgroundColor = palette.viewBackgroundColor
            
            self.selectedSection = selectedSection
            self.sections = sections
            self.palette = palette
        }

        draw()
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    // MARK: - Lifecyle
    override open func awakeFromNib() {
        
        super.awakeFromNib()

        draw()
        
    }
    
    override open func draw(_ layer: CALayer, in ctx: CGContext) {
        
        guard let layer: SectionedSliderLayer = layer as? SectionedSliderLayer else { return }
        
        let frame = CGRect(origin: CGPoint(x: 0, y: 0), size: layer.frame.size)
        
        UIGraphicsPushContext(ctx)
        
        switch keyPath {
            
        case "factor":
            
            StyleKit.drawSlider(frame: frame, factor: layer.factor, sections: CGFloat(sections), palette: palette)
            break
            
        default:
            
            break
            
        }
        
        UIGraphicsPopContext()
        
    }
    
    // MARK: - Functions
    private func resetManipulables() {
        
        guard let layer: SectionedSliderLayer = layer as? SectionedSliderLayer else { return }
        
        layer.factor = 0.0
        
    }
    
    func draw() {
        
        needsDisplay()
        
    }
    
    func needsDisplay() {
        
        layer.contentsScale = UIScreen.main.scale
        layer.setNeedsDisplay()
        
    }

    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        super.touchesBegan(touches, with: event)

        touchedX(touches)

    }

    open override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

        super.touchesMoved(touches, with: event)

        touchedX(touches)

    }

    private func touchedX(_ touches: Set<UITouch>) {

        guard
            let touch = touches.first
            else { return }

        var x = self.frame.height - touch.location(in: self).y
        x = x < 0 ? -1 : (x > self.frame.height ? self.frame.height : x)

        factor = x / self.frame.height

    }
    
}
