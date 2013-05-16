/**
 *
 * User: Ildar Gafarov
 * Date: 25.03.13
 * Time: 20:34
 * Mail: badprogrammist@gmail.com
 */
package framework.component.render.base.presets.shape
{
    import flash.display.Sprite;

    import framework.component.Component;
    import framework.component.render.base.RenderBase;
    import framework.component.render.base.presets.border.IBorder;
    import framework.component.render.base.presets.fill.IFill;
    import framework.component.render.base.presets.size.ISize;
    import framework.core.IPrototype;

    public class TreangleShape extends RenderBase implements IShape
    {
        public function TreangleShape()
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
                sprite.graphics.moveTo(0,0);
                sprite.graphics.lineTo(10,0);
                sprite.graphics.lineTo(5,5);
                sprite.graphics.lineTo(0,0);
            }
        }

        override public function Clone():IPrototype
        {
            return new TreangleShape();
        }




    }
}
