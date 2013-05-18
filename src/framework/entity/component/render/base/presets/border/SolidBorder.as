/**
 *
 * User: Ildar Gafarov
 * Date: 25.03.13
 * Time: 20:25
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.base.presets.border
{
    import flash.display.Sprite;

    import framework.core.IPrototype;
    import framework.entity.component.Component;
    import framework.entity.component.render.base.RenderBase;
    import framework.entity.component.render.base.presets.size.ISize;

    public class SolidBorder extends RenderBase implements IBorder
    {
        private var _thickness:Number
        private var _color:uint;
        public function SolidBorder(thickness:Number, color:uint)
        {
            _thickness = thickness;
            _color = color;
            this.RegisterRelate(ISize);
        }

        override public function Process(component:Component):void
        {
            if (component.mediator.displayObject is Sprite)
            {
                var sprite:Sprite = component.mediator.displayObject as Sprite;
                sprite.graphics.lineStyle(thickness,color);
            }
        }

        public function get thickness():Number
        {
            return _thickness;
        }

        public function get color():uint
        {
            return _color;
        }

        override public function Clone():IPrototype
        {
            return new SolidBorder(thickness,color);
        }

    }
}
