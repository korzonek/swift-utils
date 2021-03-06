import Foundation

class StringEncoder{
    /**
     * EXAMPLE: toNSData("String to encode")
     */
    class func toNSData(string:String)->NSData{
         return string.dataUsingEncoding(NSUTF8StringEncoding)!
    }
    /**
     * 
     */
    class func toInt(string:String)->Int{
        return Int(string)!//Convert to Int and Unwrap the returned optional by adding an exclamation point. then return it
    }
}