/**
 * User: Ildar Gafarov
 * Date: 18.05.13
 * Time: 16:39
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.base.presets.text
{
    import flash.display.DisplayObjectContainer;
    import flash.text.TextField;

    import framework.core.IPrototype;
    import framework.entity.component.Component;
    import framework.entity.component.render.base.RenderBase;
    import framework.entity.component.render.base.presets.fill.IFill;
    import framework.entity.component.render.base.presets.size.ISize;

    public class Text extends RenderBase implements IText
    {
        private var _textField:TextField;

        public function Text(textField:TextField)
        {
            super();
            RegisterRelate(ISize);
            RegisterRelate(IFill);
            _textField = textField;
        }

        override public function Process(component:Component):void
        {
            if (component.mediator.displayObject is DisplayObjectContainer)
            {
                var displayObject:DisplayObjectContainer = component.mediator.displayObject as DisplayObjectContainer;
                textField.x = 0;
                textField.y = 0;
                textField.width = displayObject.width;
                textField.height = displayObject.height;
                displayObject.addChild(textField);
            }
        }

        override public function Clone():IPrototype
        {
            return new Text(textField);
        }

        public function get textField():TextField
        {
            return _textField;
        }
    }
}
