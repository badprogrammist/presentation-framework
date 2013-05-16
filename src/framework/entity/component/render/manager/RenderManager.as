/**
 *
 * User: Ildar Gafarov
 * Date: 25.03.13
 * Time: 21:41
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.manager
{
    import framework.entity.component.Component;
    import framework.entity.component.render.base.IRenderBase;
    import framework.core.IPrototype;

    import org.as3commons.collections.SortedSet;
    import org.as3commons.collections.framework.IIterator;
    import org.as3commons.collections.framework.ISortedSet;

    public class RenderManager implements IRenderManager
    {
        private var _renderBases:ISortedSet;

        public function RenderManager()
        {
            _renderBases = new SortedSet(new RenderBaseComparator());
        }

        public function Process(component:Component):void
        {
            var i:IIterator = _renderBases.iterator();
            while(i.hasNext())
            {
                var renderBase:IRenderBase = i.next();
                renderBase.Process(component);
            }
        }

        public function AddRenderBase(renderBase:IRenderBase):void
        {
            _renderBases.add(renderBase);
        }

        public function GetRenderBase(renderBaseClass:Class):IRenderBase
        {
            var i:IIterator = GetRenderBases();
            var result:IRenderBase;
            while(i.hasNext())
            {
                var renderBase:IRenderBase = i.next();
                if (renderBase is renderBaseClass)
                {
                    result = renderBase;
                    break;
                }
            }
            return result;
        }

        public function Clone():IPrototype
        {
            var rm:RenderManager = new RenderManager();
            var i:IIterator = GetRenderBases();
            while(i.hasNext())
            {
                var renderBase:IRenderBase = i.next();
                rm.AddRenderBase(renderBase.Clone() as IRenderBase);
            }
            return rm;
        }

        public function GetRenderBases():IIterator
        {
            return _renderBases.iterator();
        }


    }
}
