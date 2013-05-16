/**
 *
 * User: Ildar Gafarov
 * Date: 25.03.13
 * Time: 20:29
 * Mail: badprogrammist@gmail.com
 */
package framework.component.render.base.presets.position
{
    import framework.component.Component;
    import framework.component.render.base.RenderBase;
    import framework.core.IPrototype;

    public class Position extends RenderBase implements IPosition
    {
        private var _x:Number;
        private var _y:Number;
        public function Position(x:Number, y:Number)
        {
            _x = x;
            _y = y;
        }

        override public function Process(component:Component):void
        {
            component.mediator.displayObject.x = x;
            component.mediator.displayObject.y = y;
        }

        public function get x():Number
        {
            return _x;
        }

        public function get y():Number
        {
            return _y;
        }

        public function set x(value:Number):void
        {
            _x = value;
        }

        public function set y(value:Number):void
        {
            _y = value;
        }

        override public function Clone():IPrototype
        {
            return new Position(x,y);
        }
    }
}
