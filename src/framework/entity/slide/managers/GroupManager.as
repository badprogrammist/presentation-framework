/**
 *
 * User: Ildar Gafarov
 * Date: 07.04.13
 * Time: 10:54
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.slide.managers
{
    import framework.entity.group.IGroup;

    import org.as3commons.collections.Map;
    import org.as3commons.collections.framework.IMapIterator;

    public class GroupManager
    {
        private var _componentManager:ComponentManager;
        private var _groups:Map;

        public function GroupManager(componentManager:ComponentManager)
        {
            _componentManager = componentManager;
        }

        public function AddGroup(componentId:String, group:IGroup):void
        {
            if( _groups == null ) _groups = new Map();
            _groups.add(componentId, group);
        }

        public function Process():void
        {
            if (_groups)
            {
                var i:IMapIterator = _groups.iterator() as IMapIterator;

                var componentId:String;
                var group:IGroup;
                while (i.hasNext())
                {
                    i.next();
                    componentId = i.key;
                    group = i.current;
                    group.Process(componentId, _componentManager);
                }
            }
        }



    }
}
