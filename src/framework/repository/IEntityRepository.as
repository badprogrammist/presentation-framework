/**
 * User: Ildar Gafarov
 * Date: 16.05.13
 * Time: 21:48
 * Mail: badprogrammist@gmail.com
 */
package framework.repository
{
    import framework.entity.EntityBase;

    public interface IEntityRepository
    {
        function AddEntity(entity:EntityBase):void;
        function GetEntity(id:String):EntityBase;
        function isEmpty():Boolean;
        function get size():int;
    }
}
