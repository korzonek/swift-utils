import Cocoa

class DropShadow {
    var color:NSColor
    var offsetX:CGFloat
    var offsetY:CGFloat
    var blurRadius:CGFloat
    var inner:Bool
    init(_ color:NSColor,_ offsetX:CGFloat,_ offsetY:CGFloat,_ blurRadius:CGFloat,_ inner:Bool){
        self.color = color
        self.offsetX = offsetX
        self.offsetY = offsetY
        self.blurRadius = blurRadius
        self.inner = inner
    }
}
extension DropShadow:CustomStringConvertible{
    /**
     * For easier printing of the class variables
     */
    var description: String { get{return "Color: " + color.hex + "\n" + "offsetX: " + String(offsetX) + "\n" + "offsetY: " + String(offsetY)} }
    /**
     * NSShadow(NSColor.blackColor().alpha(1.0),0.1,0.1,15)
     * NOTE: The class should extend NSShadow instead but we do this for now
     */
    var shadow:NSShadow{get{return NSShadow(color,offsetX,offsetY,blurRadius)} }
    /**
     * NOTE: We need a copy of the shadow color with alpha set to 1.0
     */
    var opaqueShadow:NSShadow{get{return NSShadow(opaqueColor,offsetX,offsetY,blurRadius)} }
    var opaqueColor:NSColor{return color.alpha(1.0)}
    var offset:CGSize{return CGSize(offsetX,offsetY)}
}
private class Utils{
    /**
     * We need a copy of the shadow color as CGColor with alpha set to 1.0
     * NOTE: this isnt used anymore
     */
    class func opaqueColor(color:NSColor)->CGColorRef{
        return CGColorCreateCopyWithAlpha(color.CGColor, 1.0)!
    }
}