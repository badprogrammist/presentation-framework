/**
 *
 * User: Ildar Gafarov
 * Mail: badprogrammist@gmail.com
 * Date: 02.03.13
 * Time: 18:32
 *
 */
package framework.core.tree
{

    public interface IIterator
    {
        function HasNext():Boolean;
        function Next():void;
        function GetCurrentId():String;
        function GetCurrentParentId():String;
    }
}
