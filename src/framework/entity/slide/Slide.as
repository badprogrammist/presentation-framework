/**
 *
 * User: Ildar Gafarov
 * Date: 28.03.13
 * Time: 20:21
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.slide
{
    import flash.display.DisplayObject;
    import flash.display.DisplayObjectContainer;

    import framework.entity.EntityBase;

    import framework.entity.component.Component;
    import framework.core.tree.IIterator;
    import framework.entity.slide.managers.ComponentManager;
    import framework.entity.slide.managers.GroupManager;

    public class Slide extends EntityBase
    {
        private var _componentManager:ComponentManager;
        private var _groupManager:GroupManager;

        public function Slide(id:String)
        {
            super(id);
            _componentManager = new ComponentManager(this);
            _groupManager = new GroupManager(_componentManager);
        }

        public function get componentManager():ComponentManager
        {
            return _componentManager;
        }

        public function get groupManager():GroupManager
        {
            return _groupManager;
        }

        public function Draw():void
        {
            var iterator:IIterator = componentManager.tree.GetIterator();
            while(iterator.HasNext())
            {
                iterator.Next();
                var component:Component = componentManager.GetComponent(iterator.GetCurrentId());
                var parentComponent:Component = componentManager.GetComponent(iterator.GetCurrentParentId());
                if (component.renderManager)
                {
                    var parentDisplayObject:DisplayObject = parentComponent.mediator.displayObject;
                    DisplayObjectContainer(parentDisplayObject).addChild(component.mediator.displayObject);
                    component.renderManager.Process(component);
                }
            }

            _groupManager.Process();
        }

        public function Clear():void
        {

        }


    }
}
