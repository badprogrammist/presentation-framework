/**
 *
 * User: Ildar Gafarov
 * Date: 31.03.13
 * Time: 15:28
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.base.presets.filter
{
    import flash.filters.BitmapFilter;

    import framework.core.IPrototype;
    import framework.entity.component.Component;
    import framework.entity.component.render.base.RenderBase;

    public class Filter extends RenderBase implements IFilter
    {
        private var _filter:BitmapFilter;

        public function Filter(filter:BitmapFilter)
        {
            super();
            _filter = filter;
        }

        override public function Process(component:Component):void
        {
            var filters:Array = component.mediator.displayObject.filters;
            filters.push(filter);
            component.mediator.displayObject.filters = filters;
        }

        override public function Clone():IPrototype
        {
            return new Filter(filter);
        }

        public function get filter():BitmapFilter
        {
            return _filter;
        }
    }
}
