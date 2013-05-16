/**
 *
 * User: Ildar Gafarov
 * Date: 07.04.13
 * Time: 10:57
 * Mail: badprogrammist@gmail.com
 */
package framework.slide.managers.group.presets
{
    import flash.display.DisplayObject;

    import framework.component.Component;
    import framework.core.IPrototype;
    import framework.slide.managers.ComponentManager;

    import org.as3commons.collections.framework.IIterator;

    import org.as3commons.collections.framework.ISet;

    public class Group implements IGroup
    {
        private var _interval:Number;
        private var _horizontalAlign:String;
        private var _verticalAlign:String;

        protected var parentDislayObject:DisplayObject;
        protected var childsDisplayObjects:Vector.<DisplayObject> = new Vector.<DisplayObject>();

        public function Group(interval:Number, horizontalAlign:String, verticalAlign:String)
        {
            _interval = interval;
            _horizontalAlign = horizontalAlign;
            _verticalAlign = verticalAlign;
        }

        public function Process(componentId:String, componentManager:ComponentManager):void
        {
            var component:Component = componentManager.GetComponent(componentId);
            this.parentDislayObject = component.mediator.displayObject;
            var childsId:ISet = component.slide.componentManager.tree.GetChilds(componentId);
            var i:IIterator = childsId.iterator();

            while(i.hasNext())
            {
                var childId:String = i.next();
                var childComponent:Component = componentManager.GetComponent(childId);
                this.childsDisplayObjects.push(childComponent.mediator.displayObject);
            }
            alignHorizontaly();
            alignVerticaly();




        }

        protected function alignHorizontaly():void
        {

        }

        protected function alignVerticaly():void
        {

        }



        public function get interval():Number
        {
            return _interval;
        }

        public function set interval(value:Number):void
        {
            _interval = value;
        }

        public function get horizontalAlign():String
        {
            return _horizontalAlign;
        }

        public function set horizontalAlign(value:String):void
        {
            _horizontalAlign = value;
        }

        public function get verticalAlign():String
        {
            return _verticalAlign;
        }

        public function set verticalAlign(value:String):void
        {
            _verticalAlign = value;
        }

        public function Clone():IPrototype
        {
            return null;
        }
    }
}
