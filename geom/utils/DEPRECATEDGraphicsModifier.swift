import Cocoa
//deprecate this
class DEPRECATEDGraphicsModifier{
    /**
    *
    */
 
    class func drawRect(rect:NSRect)  -> NSBezierPath{
        let path = NSBezierPath(rect: rect)
        return path
    }

    /**
    *
    */
    class func drawRoundRect(rect:NSRect,_ ellipseWidth:CGFloat,_ ellipseHeight:CGFloat) -> NSBezierPath{
        let path = NSBezierPath(roundedRect:rect, xRadius:ellipseWidth, yRadius:ellipseHeight);
        return path
    }
}