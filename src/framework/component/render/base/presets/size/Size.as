/**
 *
 * User: Ildar Gafarov
 * Date: 24.03.13
 * Time: 16:58
 * Mail: badprogrammist@gmail.com
 */
package framework.component.render.base.presets.size
{
    import framework.component.Component;
    import framework.component.render.base.RenderBase;
    import framework.core.IPrototype;

    public class Size extends RenderBase implements ISize
    {
        private var _width:Number;
        private var _height:Number;
        private var _percentageWidth:Boolean;
        private var _percentageHeight:Boolean;

        public function Size(width:Number, height:Number, percentageWidth:Boolean,percentageHeight:Boolean)
        {
            _width = width;
            _height = height;
            _percentageWidth = percentageWidth;
            _percentageHeight = percentageHeight;
        }

        override public function Process(component:Component):void
        {
            var parentId:String;
            if (percentageHeight || percentageWidth)
                parentId = component.slide.componentManager.tree.GetParent(component.id);

            if (percentageWidth)
            {
                var parentWidth:Number = component.slide.componentManager.GetComponent(parentId).mediator.displayObject.width;
                component.mediator.displayObject.width = (parentWidth/100) * width;
            }
            else
            {
                component.mediator.displayObject.width = width;
            }
            if (percentageHeight)
            {
                var parentHeight:Number = component.slide.componentManager.GetComponent(parentId).mediator.displayObject.height;
                component.mediator.displayObject.height = (parentHeight/100) * height;
            }
            else
            {
                component.mediator.displayObject.height = height;
            }
        }

        public function get width():Number
        {
            return _width;
        }

        public function get height():Number
        {
            return _height;
        }

        public function set width(value:Number):void
        {
            _width = value;
        }

        public function set height(value:Number):void
        {
            _height = value;
        }

        public function get percentageHeight():Boolean
        {
            return _percentageHeight;
        }

        public function get percentageWidth():Boolean
        {
            return _percentageWidth;
        }

        override public function Clone():IPrototype
        {
            return new Size(width,height,percentageWidth,percentageHeight);
        }


    }
}
