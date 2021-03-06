import Foundation

extension Array {
    /**
     * Removes the first item in an array
     * Shift
     * var a = ["a","b","c"]
     * Swift.print("a.shift(): " + "\(a.shift())")//a
     * Swift.print("a: " + "\(a)")//b,c
     */
    mutating func shift(/*x:[Element]*/) ->Element{
        return ArrayModifier.shift(&self)
    }
    /**
     *
     */
    mutating func pushPop(item:Element) -> Array<Element>{
        return ArrayModifier.pushPop(&self, item)
    }
    /**
     * Example: [1,2,3,4].splice(0, 1).count//3
     */
    mutating func splice(startIndex:Int,_ deleteCount:Int,_ values:Array<Element> = [])->Array<Element>{
        return ArrayModifier.splice(&self, startIndex, deleteCount, values)
    }
    mutating func unshift(item:Element)->Int{
        return ArrayModifier.unshift(&self, item)
    }
    /**
     * Returns a new array derived from the @param array sans the items from @param start to @param end
     * IMPORTANT: the original array is NOT modified
     * ["spinach","green pepper","cilantro","onion","avocado"].slice(1, 3)// "spinach","onion","avocado"
     */
    func slice(/*x:[Element]*/startIndex:Int, _ endIndex:Int) ->Array<Element>{
        return ArrayModifier.slice(self,startIndex,endIndex)
    }
    func index<T : Equatable>(arr : [T], _ value:T)->Int{
        return ArrayParser.index(arr, value)
    }
    
    /**
     * -1 equals, does not exist
     */
    mutating func removeAt(i:Int){
        if(i != -1){self.splice(i, 1)}
    }
}
/**
 * NOTE: only applicable to Array<AnyObject>
 */
extension Array where Element:AnyObject{
    func indexOf(item:AnyObject)-> Int{
        return ArrayParser.indexOf(self,item)
    }
}


/*

TODO: Needs more research see similar case with AnyObject

extension Array where Element:String{
/**
*
*/
func join(seperator:String)->String{
return StringModifier.combine(self as! Array<String>,seperator)
}
}
*/
