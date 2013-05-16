/**
 *
 * User: Ildar Gafarov
 * Mail: badprogrammist@gmail.com
 * Date: 02.03.13
 * Time: 11:26
 *
 */
package framework.core.tree
{
    import org.as3commons.collections.framework.ISet;

    public interface ITree
    {
        function GetRoot():String;
        function AddNode(parentId:String, id:String):void;
        function GetIterator():IIterator;
        function GetParent(childId:String):String;
        function GetChilds(parentId:String):ISet;
        function GetSize():uint;
    }
}
