/**
 *
 * User: Ildar Gafarov
 * Date: 28.03.13
 * Time: 21:31
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.base.presets.shape
{
    import flash.display.Sprite;

    import framework.entity.component.Component;
    import framework.entity.component.render.base.RenderBase;
    import framework.entity.component.render.base.presets.border.IBorder;
    import framework.entity.component.render.base.presets.fill.IFill;
    import framework.entity.component.render.base.presets.size.ISize;
    import framework.core.IPrototype;

    public class EllipseShape extends RenderBase implements IShape
    {
        public function EllipseShape()
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
                sprite.graphics.drawEllipse(0,0,component.mediator.displayObject.width,component.mediator.displayObject.height);
            }
        }

        override public function Clone():IPrototype
        {
            return new EllipseShape();
        }

    }
}
