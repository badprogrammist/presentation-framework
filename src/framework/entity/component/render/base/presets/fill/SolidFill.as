/**
 *
 * User: Ildar Gafarov
 * Date: 25.03.13
 * Time: 20:28
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.base.presets.fill
{
    import flash.display.Sprite;

    import framework.core.IPrototype;
    import framework.entity.component.Component;
    import framework.entity.component.render.base.RenderBase;
    import framework.entity.component.render.base.presets.size.ISize;

    public class SolidFill extends RenderBase implements IFill
    {
        private var _color:uint;
        private var _alpha:Number;
        public function SolidFill(color:uint, alpha:Number)
        {
            _color = color;
            _alpha = alpha;
            RegisterRelate(ISize);
        }

        override public function Process(component:Component):void
        {
            if (component.mediator.displayObject is Sprite)
            {
                var sprite:Sprite = component.mediator.displayObject as Sprite;
                sprite.graphics.beginFill(color,alpha);
            }
        }

        public function get alpha():Number
        {
            return _alpha;
        }

        public function get color():uint
        {
            return _color;
        }

        override public function Clone():IPrototype
        {
            return new SolidFill(color,alpha);
        }

    }
}
