/**
 * User: Ildar Gafarov
 * Date: 16.05.13
 * Time: 21:30
 * Mail: badprogrammist@gmail.com
 */
package framework.repository
{
    import framework.entity.EntityBase;

    import org.as3commons.collections.Map;

    public class EntityRepository implements IEntityRepository
    {
        private var _entities:Map = new Map();

        public function EntityRepository()
        {
        }

        public function AddEntity(entity:EntityBase):void
        {
            _entities.add(entity.id,entity);
        }

        public function GetEntity(id:String):EntityBase
        {
            return _entities.itemFor(id);
        }

        public function isEmpty():Boolean
        {
            return _entities.size == 0;
        }

        public function get size():int
        {
            return _entities.size;
        }
    }
}
