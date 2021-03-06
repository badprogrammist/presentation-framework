/**
 *
 * User: Ildar Gafarov
 * Date: 25.03.13
 * Time: 20:32
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.base.presets.shape
{
    import flash.display.Sprite;

    import framework.core.IPrototype;
    import framework.entity.component.Component;
    import framework.entity.component.render.base.RenderBase;
    import framework.entity.component.render.base.presets.fill.IFill;
    import framework.entity.component.render.base.presets.size.ISize;

    import mx.core.IBorder;

    public class RectangleShape extends RenderBase implements IShape
    {
        public function RectangleShape()
        {
            RegisterRelate(ISize);
            RegisterRelate(IBorder);
            RegisterRelate(IFill);
        }

        override public function Process(component:Component):void
        {
            if (component.mediator.displayObject is Sprite)
            {
                var sprite:Sprite = component.mediator.displayObject as Sprite;
                sprite.graphics.drawRect(0,0,component.mediator.displayObject.width,component.mediator.displayObject.height);
            }
        }

        override public function Clone():IPrototype
        {
            return new RectangleShape();
        }



    }
}
