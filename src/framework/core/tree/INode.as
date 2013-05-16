/**
 *
 * User: Ildar Gafarov
 * Mail: badprogrammist@gmail.com
 * Date: 02.03.13
 * Time: 16:18
 *
 */
package framework.core.tree
{
    import org.as3commons.collections.framework.ISet;

    public interface INode
    {
        function AddChild(childId:String):void;
        function RemoveChild(childId:String):void;
        function GetChilds():ISet;
        function GetId():String;
        function GetParent():String;
    }
}
